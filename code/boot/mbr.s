%include "boot.inc"
SECTION MBR vstart=0x7c00
	mov ax,cs
	mov ds,ax
	mov es,ax
	mov fs,ax
	mov ss,ax
	mov sp,0x7c00
	mov ax,0xb800
	mov gs,ax


;上卷所有行

	mov ax,0x0600
	mov bx,0x0700
	mov cx,0x0
	mov dx,0x184f
	
	int 0x10

;载入loader扇区地址，以及内存基址
	
	mov eax,LOADER_START_SECTOR
	mov bx,LOADER_BASE_ADDR 
	mov cx,4
	call read_disk
	
	jmp LOADER_BASE_ADDR	

read_disk:
;需要参数如下：
;0x7e03
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

	times 510-($-$$) db 0
	db 0x55,0xaa




		






