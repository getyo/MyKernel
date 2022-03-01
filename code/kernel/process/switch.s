section .text
	
global switch_on
switch_on:
	push edi
	push esi
	push ebp
	push ebx
	mov ebp,dword esp
	mov eax,[ebp+20]
	mov [eax],esp

	mov eax,[ebp+24]
	mov esp,[eax]
	pop ebx
	pop ebp
	pop esi
	pop edi
	ret
