%include "boot.inc"
SECTION loader vstart=LOADER_BASE_ADDR
jmp loader_start

;定义全局描述符表
GDT_BASE dq 0
GDT_CODE dq SG_CODE
GDT_DATA dq SG_DATA
GDT_VIDEO dq SG_VIDEO
GDT_LIMIT equ $-GDT_BASE-1
times 60 dq 0

;定义GDTR字段
gdt_ptr dw GDT_LIMIT
	dd GDT_BASE

total_mem_size dd 0
;xE820检测
;为ARDS分配缓存区:400 bytes
ards_buf times 200 dw 0
;记录ARDS数量
ards_num dw 0

BASE_OFFSET equ (0xc<<28)


loader_start:
	mov sp,LOADER_BASE_ADDR

;获取内存信息	
	;设置传入参数
	;ebx在调用时置零
	xor ebx,ebx
	;ARDS大小
	mov ecx,20
	;设置ARDS缓存区位置
	mov di,ards_buf - 20
	mov edx,0x534d4150
	
get_mem_1:
	;功能号
	mov eax,0xe820
	;更新缓存区位置
	add di,20
	
	int 0x15

	;CF=1 0xe820读取出错
	jc get_mem_2
	;更新内存大小
	mov eax,[es:di + 8]
	inc word [ards_num]
	
	;cmp用来判断ebx是否为0,若为0，说明没有要读取的ARDS
	;CF=0 && ZF==0 所有ARDS都已经读取完成
	;CF=0 && ZF!=0 ARDS未读取完成
	cmp ebx,0
	jnz get_mem_1
	
	;一趟遍历找出最大值
	;cx为循环控制
	;eax记录最大值
	;ebx记录偏移量
	mov cx,[ards_num]
	xor eax,eax
	mov ebx,ards_buf
find_mem:
	mov edx,[ebx]
	add edx,[ebx+8]
	add ebx,20
	cmp eax,edx
	jge continue_loop
	mov eax,edx
continue_loop:
	loop find_mem
	
	mov [total_mem_size],eax
	jmp get_over
;0xE801获取内存
get_mem_2:

	;功能号
	mov eax,0xe801
	
	int 0x15
	;CF=1 检测出错，使用第三种方法
	jb get_mem_3
	
	;内存总大小为(eax*1k+ebx*64k+1)bytes
	shl eax,10
	shl ebx,16
	add eax,1
	add eax,ebx
	mov [total_mem_size],eax
	
	jnc get_over
;0x88获取内存
get_mem_3:

	;功能号
	mov eax,0x88
	
	;第三种方法获取内存失败
	jb get_fail
	
	;内存总大小为(eax*1k+1)	
	shl eax,10
	add eax,1
	mov [total_mem_size],eax

get_over:
get_fail:

;打开A20地址线
	in al,0x92;
	or al,0000_0010b;
	out 0x92,al;
;加载GDT
	lgdt [gdt_ptr]
;打开CPU保护模式
	mov eax,cr0;
	or eax,0x00000001
	mov cr0,eax

;清空流水线
	jmp dword SEL_CODE:p_mode_start

[bits 32]
p_mode_start:
	;将数据段选择子加载到相应寄存器并加载栈顶指针
	mov ax,SEL_DATA
	mov ds,ax
	mov es,ax
	mov ss,ax
	mov esp,LOADER_BASE_ADDR
	mov ax,SEL_VIDEO
	mov gs,ax
	

page_start:
;创建页表
call set_up_pdt

;开启虚拟内存后，需要对全局段描述符表进行重定位
;虽然第0项PDE也是指向基址0x000000，但是终归是在低3G的用户空间，
;之所以指向是为了loader的正常工作，以后就会把它覆盖掉，
;所以真正指向基址0x00的是PDE0xc00,要想访问到它对应虚拟地址为0xc<<28
	;0xdaa
	sgdt [gdt_ptr]
	add dword [gdt_ptr+2],BASE_OFFSET
;因为VIDEO段为IO设备，需要在内核空间管理，所以也要映射到内核	
	add dword [GDT_VIDEO+4],0xc0000000
	
;cr3寄存器指向页目录表
	mov eax,PDT_DIR_BASE_ADDR
	mov cr3,eax
;将cr0第31位置一
	mov eax,cr0
	or eax,0x80000000
	mov cr0,eax
;重新加载GDT
	lgdt [gdt_ptr]

	pushf
	or dword [esp],0x00020000
	popf

v_start:
	call kernel_init
	mov esp,0x9effc
;0xe06
	jmp 0xc0001500

;创建分页
;0xde9
set_up_pdt:
;将页目录项清零
	mov cx,1024
	mov eax,0
	mov ebx,PDT_DIR_BASE_ADDR
.clear_page_dir:
	and [ebx],eax
	add ebx,4
	loop .clear_page_dir

;创建第0个PDE
	;eax保存PDE
	mov eax,PDT_DIR_BASE_ADDR
	add eax,0x1000
	or eax,PDT_US_U|PDT_RW_W|PDT_P
	;ebx为基址	
	mov ebx,PDT_DIR_BASE_ADDR
	mov [ebx],eax
	
;将0xc00的PDE也指向系统空间
	mov [ebx + 0xc00],eax
;让页目录项最后一个PDE指向自己
	sub eax,0x1000
	mov [ebx + 0xffc],eax
;为了凑够内核空间的1G大小，需要另外创建254个PDE
	;跳过第0个PDE
	add ebx,4
	add eax,0x2000
	mov cx,254	

.create_pde:
	mov [ebx],eax 
	add ebx,4
	add eax,0x1000
	loop .create_pde

;创建第0个页表,即0PDE和0xc00PDE指向的页表
	;ebx为第0个页表基址,一个页表大小为4096bytes,页目录表也是一个页表
	mov ebx,PDT_DIR_BASE_ADDR
	add ebx,4096
	;预计操作系统内核为1M，所以开辟1M内存，即256*4K
	mov cx,256
	mov eax,(0x0 << 28) + PDT_US_U + PDT_RW_W + PDT_P;

.create_pte:
	mov [ebx],eax
	add eax,0x1000
	add ebx,4
	loop .create_pte
	
	ret

kernel_init:
	;0xe7c
	mov eax,KERNEL_START_SECTOR
	mov ebx,KERNEL_FILE_BASE_ADDR
	mov ecx,1000			;500kb
	;调用read_disk
	call read_disk
	
	;cx为程序段头的数量
	mov cx,[ebx+44]
	;ax为程序段头的大小
	mov ax,[ebx+42]
	;edx为程序头偏移
	mov edx,[ebx+28]
	;ebx跳转到程序段头处
	add ebx,edx

	.read_phead:
		cmp byte[ebx],0
		je .PT_NULL	
		;mem_cpy调用参数
		;依次为src,drc,size
		;入栈反着来
		push dword [ebx+16]
		push dword [ebx+8]
		;偏移量+基址=源地址
		mov edx,KERNEL_FILE_BASE_ADDR
		add edx,[ebx+4]
		push edx
		
		call mem_cpy
		add esp,12
		add ebp,12

	.PT_NULL:
		add ebx,eax
		loop .read_phead
	
	ret

	
;0xec0
mem_cpy:
	push ecx
	push edx
	push edi
	push esi
	push ebp
	
	mov ebp,esp
	cld
	mov esi,[ebp+24]
	mov edi,[ebp+28]
	mov ecx,[ebp+32]
	rep movsb

	pop ebp
	pop esi
	pop edi
	pop edx
	pop ecx
	ret

read_disk:
;需要参数如下：
;eax 起始扇区号
;ebx 读取到内存的基址
;cx 读取扇区数目
;1. 将读取地址信息及命令输出到磁盘驱动器

	push eax
	push ebx
	push ecx
	push edx
	push esi
	push edi
;备份eax，因为从端口输出要用到al
	mov edi,eax
	mov si,cx

;首先输出读取扇区数到0x1f2
	mov dx,0x1f2
	mov ax,cx
	out dx,al
	
;输出loader扇区地址低8位
	mov eax,edi			;恢复eax内容
	mov dx,0x1f3
	out dx,al

;输出中间8位
	mov cl,8
	mov dx,0x1f4
	shr eax,cl			;eax右移8位
	out dx,al

;输出高8位
	mov dx,0x1f5
	shr eax,cl
	out dx,al

;将ax高位置为1110
	shr eax,cl
	and al,0x0f
	or  al,0xe0
	mov dx,0x1f6
	out dx,al

;输出读命令到驱动
	mov al,0x20
	mov dx,0x1f7
	out dx,al

;2 检测磁盘状态

.not_ready:
	nop
	in  al,dx
	and al,0x88

	cmp al,0x08
	jnz .not_ready

;3 进行读操作

;计算读取的字数	
	mov ax,si
	mov dx,256
	mul dx
	mov cx,ax
	mov dx,0x1f0

;读取循环
	.read:
	in ax,dx
	mov [ebx],ax
	add ebx,2
	loop .read

	pop edi
	pop esi
	pop edx
	pop ecx
	pop ebx
	pop eax
	ret




