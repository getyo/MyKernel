
BS equ 0x8	;退格
LF equ 0xd	;换行
CR equ 0xa	;回车
SEL_VEDIO equ (0x0003 << 3) + 000

section .text 
global put_char
put_char:
;函数put_char定义如下: void put_char(int_8 c)

	pushad

	;设置Address register
	;0xe为光标位置高8位偏移量	
	mov dx,0x3d4
	mov al,0xe
	out dx,al

	;读取光标高8位,bx保存光标位置
	mov dx,0x3d5
	in al,dx
	mov bh,al

	;读取光标低8位
	mov dx,0x3d4
	mov al,0xf
	out dx,al

	mov dx,0x3d5
	in al,dx
	mov bl,al
	
	;cx保存要输入的字符以及格式
	mov ebp,esp
	mov ch,0x07	;黑底白字
	mov cl,[ebp+36]

	;设置段寄存器，为将来打印做准备
	mov ax,SEL_VEDIO
	mov gs,ax
 	
	cmp bx,0x7d0
	jge .roll_screen
.current:
	cmp cl,BS
	je .bs_p
	cmp cl,LF
	je .lf_p
	cmp cl,CR
	je .cr_p

	jmp .put_other

;打印非不可打印字符
.put_other:
	;光标位置*2=当前显存偏移
	shl bx,1
	mov [gs:bx],cx
	shr bx,1
	;递增光标并写回
	inc bx
	jmp .set_cursor

;根据bx设置光标
.set_cursor:
	mov dx,0x3d4
	mov al,0xe
	out dx,al

	mov dx,0x3d5
	mov al,bh
	out dx,al
	
	mov dx,0x3d4
	mov al,0xf
	out dx,al
	
	mov dx,0x3d5
	mov al,bl
	out dx,al
	
	popad
	ret
;处理退格
.bs_p:
	;递减光标，将最后一个输出字符用空字符覆盖
	dec bx
	shl bx,1
	mov word [gs:bx],0x0700
	shr bx,1
	jmp .set_cursor

;处理换行
.lf_p:
	;除法余数获取当前光标距离行首偏移量
	mov ax,bx
	mov dl,80
	div dl
	shr ax,8
	sub bx,ax
	
	jmp .set_cursor

;处理回车：换行+回车
.cr_p:
	mov ax,bx
	mov dl,80
	div dl
	shr ax,8
	sub bx,ax	

	add bx,80
	jmp .set_cursor

;滚屏
.roll_screen:

	pushad
	push es
	push ds
	
	;将所有行上调1行

	mov ax,SEL_VEDIO
	mov ds,ax
	mov es,ax
	
	cld	
	mov esi,0xa0
	mov edi,0x00
	mov ecx,3840
	rep movsb

	;清空最后行
	mov ecx,80
	mov eax,0xf00
	.clear_last_row:
		mov word [gs:eax],0x0700
		add ax,2
	loop .clear_last_row
	
	pop ds
	pop es
	popad
	mov bx,1920
	jmp .current

		
;----------将32位整数输出为16进制------------------
global put_int
put_int:
	pushad
	;打印前缀0x
	mov al,0x30
	push ax
	call put_char
	add esp,2
	mov al,0x78
	push ax
	call put_char
	add esp,2

	mov ebp,esp
	;将要打印的整数取出
	mov eax,dword [ebp+36]
	mov ecx,8
	;ebx作为整数即将打印的整数保存区
	mov ebx,eax
	
	;dx作为是否是第一个0的标志
	mov dx,0
.print_int:
	and ebx,0xF0000000
	
	cmp dx,0
	jnz .not_0
	cmp ebx,0
	je .is_first_0

.not_0:
	add dx,1
	;比较当前数字是否大于等于0xa
	shr ebx,4
	cmp ebx,(0xa << 24)
	jge .handle_letter

	;不大于0xa的数字加上0的ASCII然后打印
	add ebx,(0x30 << 24)
	jmp .call_print
	
	;处理大于0xa的数字
	.handle_letter:
		add ebx,(0x57 << 24)
		jmp .call_print	

	.call_print:
		shr ebx,24
		push ebx
		call put_char
		add esp,4
	
.is_first_0:
		shl eax,4
		mov ebx,eax
		loop .print_int
	;循环结束，如果dx为0说明要打印的数字是0，将0打印
	cmp dx,0
	jnz .end_print_int
	push dword 0x30
	call put_char
	add esp,4
.end_print_int:
	popad
ret

	
;-----------供外部调用的光标设置函数-------------
global set_cursor
set_cursor:
	;获取所需光标位置
	pushad
	mov ebp,esp
	mov ebx,[ebp+36]

	mov dx,0x3d4
	mov al,0xe
	out dx,al

	mov dx,0x3d5
	mov al,bh
	out dx,al
	
	mov dx,0x3d4
	mov al,0xf
	out dx,al
	
	mov dx,0x3d5
	mov al,bl
	out dx,al
	
	popad
	ret




















