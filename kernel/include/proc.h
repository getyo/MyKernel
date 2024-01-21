#ifndef __PROC__HH___
#define __PROC__HH___

#include "thread.h"
#include "data_type.h"
#include "global.h"
#include "debug.h"
#include "smalloc.h"

typedef struct{
	uint_32 pre_task;
	uint_32 esp0;
	uint_32 ss0;
	uint_32 esp1;
	uint_32 ss1;
	uint_32 esp2;
	uint_32 ss2;
	uint_32 cr3;
	uint_32 eip;
	uint_32 eflags;
	uint_32 eax;
	uint_32 ecx;
	uint_32 edx;
	uint_32 ebx;
	uint_32 esp;
	uint_32 ebp;
	uint_32 esi;
	uint_32 edi;
	uint_32 es;
	uint_32 cs;
	uint_32 ss;
	uint_32 ds;
	uint_32 fs;
	uint_32 gs;
	uint_16 io_offset;
	uint_16 t;
}tss;

typedef struct{
	uint_16 lim2;
	uint_16 base3;
	uint_8 base2;
	uint_8 type;
	uint_8 attr_lim1;
	uint_8 base1;
}gdt_des;

//创建用户段选择子以及载入TSS字段
void init_proc_data();
//创建用户段描述符
gdt_des make_seg_des(uint_32 base,uint_32 limit,uint_8 attr_lim1,uint_8 type);
//载入段界限
void lgdt(uint_16 limit);
//创建进程
proc * proc_start(char * name,uint_32 priority,thread_fun * function,void * fun_arg);
proc * init_proc(proc * p,proc_fun * fun,void * fun_arg);
void create_proc_page(proc * p);
//执行进程函数
void process_fun();
void exchange_esp0 (thread * t);
int install_file(proc *p,int fd);
#endif
