[bits 32]
;中断返回时，默认会有错误码在栈中，但是只有一部分中断处理器会自动压入错误码，
;在中断没有错误码的情况下，需要压入0来保证栈中信息位置的正确性
%define ERROR_CODE nop
%define ZERO push 0
SEL_DATA equ (0x0002 << 3) + 000b
extern put_string
extern idt_table
extern syscall_table

section .data
global int_entry_table
	int_entry_table times 0x81 dd 0
	
section .text
;此宏接受两个参数，一个是中断号，一个是错误码
;定义了中断处理程序
%macro VECTOR 2
int%1_entry:
	;保存上下文
	cli
	;有错误码的中断指行nop,否则压入0
	%2
	pushad
	push ds
	push es
	push fs
	push gs

	mov ax,SEL_DATA
	mov ds,ax
	mov es,ax
	mov fs,ax
	;发送中断结束信号
	mov al,0x20
	out 0x20,al
	out 0xa0,al
	
	push %1
	sti
	call [idt_table + %1 * 4]
	jmp exit_int
	
%endmacro 

;系统调用入口
global sys_call
int128_entry:
	cli
	push 0
	pushad
	push ds
	push es
	push fs
	push gs
	
	mov ax,SEL_DATA
	mov ds,ax
	mov es,ax
	mov fs,ax
	;发送中断结束信号
	mov al,0x20
	out 0x20,al
	out 0xa0,al
	
	;为保持格式统一，其实用不到中断号
	push 0x80
	
	;获取用户栈指针
	mov ebx,[esp + 4 + 16 + 32 + 4 + 12]
	;将参数copy到内核栈
	;参见syscall.h中的入栈顺序
	push dword[ebx + 12]
	push dword[ebx + 8]
	push dword[ebx + 4]
	;系统调用号保存到esi
	mov esi,[ebx]
	
	;esi * 4 ，用于系统调用号寻址
	shl esi,2
	sti
	
	call [syscall_table + esi];
	;三个参数出栈
	add esp,12
	
	;将eax存入栈中保存用户上下文的位置
	mov [esp + 4 + 16 + 28],eax
	jmp exit_int
	
;恢复上下文
global exit_int
exit_int:

	add esp,4
	pop eax
	mov gs,ax
	pop eax
	mov fs,ax
	pop eax
	mov es,ax
	pop eax
	mov ds,ax
	popad
	add esp,4
	
	iret

	VECTOR 0,ZERO
	VECTOR 1,ZERO
	VECTOR 2,ZERO
	VECTOR 3,ZERO
	VECTOR 4,ZERO
	VECTOR 5,ZERO
	VECTOR 6,ZERO
	VECTOR 7,ZERO
	VECTOR 8,ERROR_CODE
	VECTOR 9,ZERO
	VECTOR 10,ERROR_CODE
	VECTOR 11,ERROR_CODE
	VECTOR 12,ERROR_CODE
	VECTOR 13,ERROR_CODE
	VECTOR 14,ERROR_CODE
	VECTOR 15,ZERO
	VECTOR 16,ZERO
	VECTOR 17,ERROR_CODE
	VECTOR 18,ZERO
	VECTOR 19,ZERO
	VECTOR 20,ZERO
	VECTOR 21,ZERO
	VECTOR 22,ZERO
	VECTOR 23,ZERO
	VECTOR 24,ZERO
	VECTOR 25,ZERO
	VECTOR 26,ZERO
	VECTOR 27,ZERO
	VECTOR 28,ZERO
	VECTOR 29,ZERO
	VECTOR 30,ZERO
	VECTOR 31,ZERO
	VECTOR 32,ZERO	;时钟中断
	VECTOR 33,ZERO	;键盘中断
	VECTOR 34,ZERO
	VECTOR 35,ZERO
	VECTOR 36,ZERO
	VECTOR 37,ZERO
	VECTOR 38,ZERO
	VECTOR 39,ZERO
	VECTOR 40,ZERO
	VECTOR 41,ZERO
	VECTOR 42,ZERO
	VECTOR 43,ZERO
	VECTOR 44,ZERO
	VECTOR 45,ZERO
	VECTOR 46,ZERO
	VECTOR 47,ZERO
	VECTOR 48,ZERO
	VECTOR 49,ZERO
	VECTOR 50,ZERO
	VECTOR 51,ZERO
	VECTOR 52,ZERO
	VECTOR 53,ZERO
	VECTOR 54,ZERO
	VECTOR 55,ZERO
	VECTOR 56,ZERO
	VECTOR 57,ZERO
	VECTOR 58,ZERO
	VECTOR 59,ZERO
	VECTOR 60,ZERO
	VECTOR 61,ZERO
	VECTOR 62,ZERO
	VECTOR 63,ZERO
	VECTOR 64,ZERO
	VECTOR 65,ZERO
	VECTOR 66,ZERO
	VECTOR 67,ZERO
	VECTOR 68,ZERO
	VECTOR 69,ZERO
	VECTOR 70,ZERO
	VECTOR 71,ZERO
	VECTOR 72,ZERO
	VECTOR 73,ZERO
	VECTOR 74,ZERO
	VECTOR 75,ZERO
	VECTOR 76,ZERO
	VECTOR 77,ZERO
	VECTOR 78,ZERO
	VECTOR 79,ZERO
	VECTOR 80,ZERO
	VECTOR 81,ZERO
	VECTOR 82,ZERO
	VECTOR 83,ZERO
	VECTOR 84,ZERO
	VECTOR 85,ZERO
	VECTOR 86,ZERO
	VECTOR 87,ZERO
	VECTOR 88,ZERO
	VECTOR 89,ZERO
	VECTOR 90,ZERO
	VECTOR 91,ZERO
	VECTOR 92,ZERO
	VECTOR 93,ZERO
	VECTOR 94,ZERO
	VECTOR 95,ZERO
	VECTOR 96,ZERO
	VECTOR 97,ZERO
	VECTOR 98,ZERO
	VECTOR 99,ZERO
	VECTOR 100,ZERO
	VECTOR 101,ZERO
	VECTOR 102,ZERO
	VECTOR 103,ZERO
	VECTOR 104,ZERO
	VECTOR 105,ZERO
	VECTOR 106,ZERO
	VECTOR 107,ZERO
	VECTOR 108,ZERO
	VECTOR 109,ZERO
	VECTOR 110,ZERO
	VECTOR 111,ZERO
	VECTOR 112,ZERO
	VECTOR 113,ZERO
	VECTOR 114,ZERO
	VECTOR 115,ZERO
	VECTOR 116,ZERO
	VECTOR 117,ZERO
	VECTOR 118,ZERO
	VECTOR 119,ZERO
	VECTOR 120,ZERO
	VECTOR 121,ZERO
	VECTOR 122,ZERO
	VECTOR 123,ZERO
	VECTOR 124,ZERO
	VECTOR 125,ZERO
	VECTOR 126,ZERO
	VECTOR 127,ZERO


;填写中断表项
global int_entry_fill
int_entry_fill:
mov dword[int_entry_table + 0], int0_entry
mov dword[int_entry_table + 4], int1_entry
mov dword[int_entry_table + 8], int2_entry
mov dword[int_entry_table + 12], int3_entry
mov dword[int_entry_table + 16], int4_entry
mov dword[int_entry_table + 20], int5_entry
mov dword[int_entry_table + 24], int6_entry
mov dword[int_entry_table + 28], int7_entry
mov dword[int_entry_table + 32], int8_entry
mov dword[int_entry_table + 36], int9_entry
mov dword[int_entry_table + 40], int10_entry
mov dword[int_entry_table + 44], int11_entry
mov dword[int_entry_table + 48], int12_entry
mov dword[int_entry_table + 52], int13_entry
mov dword[int_entry_table + 56], int14_entry
mov dword[int_entry_table + 60], int15_entry
mov dword[int_entry_table + 64], int16_entry
mov dword[int_entry_table + 68], int17_entry
mov dword[int_entry_table + 72], int18_entry
mov dword[int_entry_table + 76], int19_entry
mov dword[int_entry_table + 80], int20_entry
mov dword[int_entry_table + 84], int21_entry
mov dword[int_entry_table + 88], int22_entry
mov dword[int_entry_table + 92], int23_entry
mov dword[int_entry_table + 96], int24_entry
mov dword[int_entry_table + 100], int25_entry
mov dword[int_entry_table + 104], int26_entry
mov dword[int_entry_table + 108], int27_entry
mov dword[int_entry_table + 112], int28_entry
mov dword[int_entry_table + 116], int29_entry
mov dword[int_entry_table + 120], int30_entry
mov dword[int_entry_table + 124], int31_entry
mov dword[int_entry_table + 128], int32_entry
mov dword[int_entry_table + 132], int33_entry
mov dword[int_entry_table + 136], int34_entry
mov dword[int_entry_table + 140], int35_entry
mov dword[int_entry_table + 144], int36_entry
mov dword[int_entry_table + 148], int37_entry
mov dword[int_entry_table + 152], int38_entry
mov dword[int_entry_table + 156], int39_entry
mov dword[int_entry_table + 160], int40_entry
mov dword[int_entry_table + 164], int41_entry
mov dword[int_entry_table + 168], int42_entry
mov dword[int_entry_table + 172], int43_entry
mov dword[int_entry_table + 176], int44_entry
mov dword[int_entry_table + 180], int45_entry
mov dword[int_entry_table + 184], int46_entry
mov dword[int_entry_table + 188], int47_entry
mov dword[int_entry_table + 192], int48_entry
mov dword[int_entry_table + 196], int49_entry
mov dword[int_entry_table + 200], int50_entry
mov dword[int_entry_table + 204], int51_entry
mov dword[int_entry_table + 208], int52_entry
mov dword[int_entry_table + 212], int53_entry
mov dword[int_entry_table + 216], int54_entry
mov dword[int_entry_table + 220], int55_entry
mov dword[int_entry_table + 224], int56_entry
mov dword[int_entry_table + 228], int57_entry
mov dword[int_entry_table + 232], int58_entry
mov dword[int_entry_table + 236], int59_entry
mov dword[int_entry_table + 240], int60_entry
mov dword[int_entry_table + 244], int61_entry
mov dword[int_entry_table + 248], int62_entry
mov dword[int_entry_table + 252], int63_entry
mov dword[int_entry_table + 256], int64_entry
mov dword[int_entry_table + 260], int65_entry
mov dword[int_entry_table + 264], int66_entry
mov dword[int_entry_table + 268], int67_entry
mov dword[int_entry_table + 272], int68_entry
mov dword[int_entry_table + 276], int69_entry
mov dword[int_entry_table + 280], int70_entry
mov dword[int_entry_table + 284], int71_entry
mov dword[int_entry_table + 288], int72_entry
mov dword[int_entry_table + 292], int73_entry
mov dword[int_entry_table + 296], int74_entry
mov dword[int_entry_table + 300], int75_entry
mov dword[int_entry_table + 304], int76_entry
mov dword[int_entry_table + 308], int77_entry
mov dword[int_entry_table + 312], int78_entry
mov dword[int_entry_table + 316], int79_entry
mov dword[int_entry_table + 320], int80_entry
mov dword[int_entry_table + 324], int81_entry
mov dword[int_entry_table + 328], int82_entry
mov dword[int_entry_table + 332], int83_entry
mov dword[int_entry_table + 336], int84_entry
mov dword[int_entry_table + 340], int85_entry
mov dword[int_entry_table + 344], int86_entry
mov dword[int_entry_table + 348], int87_entry
mov dword[int_entry_table + 352], int88_entry
mov dword[int_entry_table + 356], int89_entry
mov dword[int_entry_table + 360], int90_entry
mov dword[int_entry_table + 364], int91_entry
mov dword[int_entry_table + 368], int92_entry
mov dword[int_entry_table + 372], int93_entry
mov dword[int_entry_table + 376], int94_entry
mov dword[int_entry_table + 380], int95_entry
mov dword[int_entry_table + 384], int96_entry
mov dword[int_entry_table + 388], int97_entry
mov dword[int_entry_table + 392], int98_entry
mov dword[int_entry_table + 396], int99_entry
mov dword[int_entry_table + 400], int100_entry
mov dword[int_entry_table + 404], int101_entry
mov dword[int_entry_table + 408], int102_entry
mov dword[int_entry_table + 412], int103_entry
mov dword[int_entry_table + 416], int104_entry
mov dword[int_entry_table + 420], int105_entry
mov dword[int_entry_table + 424], int106_entry
mov dword[int_entry_table + 428], int107_entry
mov dword[int_entry_table + 432], int108_entry
mov dword[int_entry_table + 436], int109_entry
mov dword[int_entry_table + 440], int110_entry
mov dword[int_entry_table + 444], int111_entry
mov dword[int_entry_table + 448], int112_entry
mov dword[int_entry_table + 452], int113_entry
mov dword[int_entry_table + 456], int114_entry
mov dword[int_entry_table + 460], int115_entry
mov dword[int_entry_table + 464], int116_entry
mov dword[int_entry_table + 468], int117_entry
mov dword[int_entry_table + 472], int118_entry
mov dword[int_entry_table + 476], int119_entry
mov dword[int_entry_table + 480], int120_entry
mov dword[int_entry_table + 484], int121_entry
mov dword[int_entry_table + 488], int122_entry
mov dword[int_entry_table + 492], int123_entry
mov dword[int_entry_table + 496], int124_entry
mov dword[int_entry_table + 500], int125_entry
mov dword[int_entry_table + 504], int126_entry
mov dword[int_entry_table + 508], int127_entry
mov dword[int_entry_table + 512], int128_entry
ret















