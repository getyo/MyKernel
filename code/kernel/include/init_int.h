#ifndef __INIT___
#define __INIT___
#include "data_type.h"
struct gate_des {
	uint_16 offset_low16;
	uint_16 selector;
	uint_8 unused;
	//这三个字段所有中断门都一样，不需要多描述
	uint_8 p_dpl_type;
	uint_16 offset_high_16;
};
void init_int(void);
//默认处理函数
void gernal_handle(int int_vector);
//时钟中断处理函数
void handle_clock_intr();
//填写中断处理函数
static void idt_table_init();
//用于其他模块注册中断
void register_intr(uint_32 int_vec,void * fun);
//创建中断门描述符
static void make_idt_entry(struct gate_des * des,void * fun_addr);
static void init_int_des(void);
//中断代理8259A的初始化
static void init_pic(void);
//对计时器8253进行初始化
static void init_timer(uint_8 control_word);
//外部注册中断
void register_int(uint_32 int_vec,void * fun);
//让线程休眠msnd毫秒
void mtime_sleep(uint_32 msnd);
#endif
