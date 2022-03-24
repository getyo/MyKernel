#include "interrupt.h"

#define GET_EFLAGS(EFLAGS) asm volatile ("pushfl;popl %0":"=g"(EFLAGS)) 
#define IF_EN (0x1 << 9)

enum int_status get_int_status(void){
	int eflags = 0;
	GET_EFLAGS(eflags);
	return (eflags & IF_EN) > 0 ? INT_ON:INT_OFF;
}

enum int_status int_enable(void){
	enum int_status new_status = get_int_status();
	asm volatile ("sti");
	return new_status;
}

enum int_status int_disable (void){
	enum int_status new_status = get_int_status();
	asm volatile("cli");
	return new_status;
}

enum int_status set_int_status(enum int_status s){
	int eflags = 0;
	GET_EFLAGS(eflags);
	if (s == INT_ON) return int_enable();
	else return int_disable();
}
