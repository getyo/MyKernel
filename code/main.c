#include "init_int.h"
#include "print.h"
#include "debug.h"
#include "malloc.h"
#include "pool.h"
#include "thread.h"
#include "semaphore.h"
#include "console.h"
#include "proc.h"
#include "syscall.h"
#include "stdio.h"
#include "stdlib.h"

uint_32 a;
void print(uint_32 n);
void main(void){
	set_cursor(0);
	int_disable();
	init_int();
	put_str("intr init \n");
	init_pool();
	put_str("pool init \n");
	init_thread_list();
	put_str("thread init \n");
	init_console();
	put_str("console init \n");
	init_keyboard();
	put_str("keyboard init \n");
	init_proc_data();
	console_put_str("proc init \n");
	mem_decs_init(mdecs);
	console_put_str("mem init \n");
	int_enable();
	a = 16;
	proc_start("name",10,print,a);
	while(1);
}

void print(uint_32 n){
	uint_32 p = malloc(2);
	printf("the memory is %x",p);
	while(1);
}
