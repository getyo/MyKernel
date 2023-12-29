#include "print.h"
#include "data_type.h"
#include "port_io.h"
#include "init_int.h"
#include "thread.h"
#include "syscall.h"
#define SEL_K_CODE 0x0008
#define ENTRY_NUM 0x81

extern void int_entry_fill(void);
extern void keyboard_int_handle();
extern void * int_entry_table[ENTRY_NUM];
//中断描述符表数组
struct gate_des idt [ENTRY_NUM];
//中断处理程序入口地址
//int_entry_table中的中断处理程序只是把发送信号到8259A结束中断而已，本质上没有处理中断
//所以int_entry_table中对应的函数还要跳到idt_table中来处理中断
//初始化每一个中断描述符
void * idt_table[ENTRY_NUM];
char * idt_info[ENTRY_NUM];
uint_32 total_ticks;

void gernal_handle(int int_vector){
	asm("cli");
	if(int_vector == 0x27 || int_vector == 0x2f)
		goto next;
	put_str(idt_info[int_vector]);
	put_int(int_vector);
	put_char('\n');
	asm("hlt");
next:
	return;
}

void handle_clock_intr(){
	enum int_status new_status = int_disable();
	struct thread * t = get_running();
	t->tick--;
	t->total_tick++;
	if(t->tick == 0){
		t->tick = t->priority;
		schedule();
	}
	total_ticks++;	//用于线程休眠计数
	set_int_status(new_status);
}

static void idt_table_init(){
	int i = 0;	
	for(;i <= ENTRY_NUM;i++){
		idt_table[i] = gernal_handle;
		idt_info[i] = "unknow int";
	}
	idt_table[0x20] = handle_clock_intr;
	idt_table[0x21] = keyboard_int_handle;
	idt_info[0] = "#DE Divide Error";
	idt_info[1] = "#DB Debug";
	idt_info[3] = "#BP break point";
	idt_info[4] = "#OF overflow";
	idt_info[5] = "#BR Bound Range Exceeded";
	idt_info[6] = "#UD Invalid Opcode";
	idt_info[7] = "#NM Device Not Available";
	idt_info[8] = "#DF Double Fault";
	idt_info[10] = "#TS Invalid TSS";
	idt_info[11] = "#NP Segment Not Present";
	idt_info[12] = "#SS Stack-Segment Fault";
	idt_info[13] = "#GP General Protection";
	idt_info[14] = "#PF Page Fault";
	idt_info[16] = "#MF x87 FPU Floating-Point Error (Math Fault)";
	idt_info[17] = "#AC Alignment Check";
	idt_info[18] = "#MC Machine Check";
	idt_info[19] = "#XM SIMD Floating-Point Exception";
	idt_info[20] = "#VE Virtualization Exception";

	//put_str("idt_table idt_info init \n");
	return;
}

void register_int(uint_32 int_vec,void * fun)
{
	idt_table[int_vec] = fun;
}

static void make_idt_entry(struct gate_des * des,void * fun_addr){
	des->offset_high_16 = ((uint_32)fun_addr & 0xffff0000)>> 16;
	des->p_dpl_type = 0xee;
	des->unused = 0x00;
	des->selector = SEL_K_CODE;
	des->offset_low16 = (uint_32)fun_addr & 0x0000ffff;
	return;
}

static void init_int_des(void){
	int i;
	for(i = 0; i <= ENTRY_NUM;i++){
		make_idt_entry(&idt[i],int_entry_table[i]);
	}
	//put_str("idt init \n");
	return;
}

//8259A的初始化
static void init_pic(void){
	//初始化主片
	write_port(PORT_M_ICW1,0x11);
	write_port(PORT_M_ICW2,0x20);
	write_port(PORT_M_ICW3,0x04);
	write_port(PORT_M_ICW4,0x01);

	//初始化从片
	write_port(PORT_S_ICW1,0x11);
	write_port(PORT_S_ICW2,0x28);
	write_port(PORT_S_ICW3,0x02);
	write_port(PORT_S_ICW4,0x01);

	write_port(PORT_M_OCW1,0xf8);

	write_port(PORT_S_OCW1,0xbf);

	//put_str("pic init \n");
	return;
}


#define COUNTER_CONTROL_PORT 0x43
#define COUNTER0_DATA_PORT 0x40
#define COUNTER_SC0 0
#define COUNTER_SC1 1
#define COUNTER_SC2 2
#define COUNTER_RW_LOCK 0
#define COUNTER_RW_LOW 1
#define COUNTER_RW_HIGH 2
#define COUNTER_RW_LOW_HIGH 3
#define COUNTER_M2 2
#define COUNTER_BIN 0
#define INPUT_FREQUENCY 1193180	//8253的每秒计数次数
#define IRQ0_FREQUENCY 1000	//8259A的IRQ0端口每秒希望接受的时钟中断数
//对8253进行初始化
static void init_timer(uint_8 control_word){
	write_port(COUNTER_CONTROL_PORT,control_word);
	uint_16 rate = INPUT_FREQUENCY/IRQ0_FREQUENCY;
	write_port(COUNTER0_DATA_PORT,(uint_8)rate);
	write_port(COUNTER0_DATA_PORT,(uint_8)(rate >> 8));
	
	//put_str("timer init \n");
	return;
}

//让线程休眠msnd毫秒
void mtime_sleep(uint_32 msnd)
{
	uint_32 start_ticks = total_ticks;
	//将毫秒转化为ticks
	uint_32 wait_ticks = DIV_UP(msnd * IRQ0_FREQUENCY,1000);//之所以这么算是因为舍入问题
	printk("the ticks is %d\n",wait_ticks);
	//不知道什么原因，等待时间总是比输入时间小一个数量极，只能手动调整
	wait_ticks*=10;
	while(total_ticks - start_ticks < wait_ticks)
		thread_yield();
}
void init_int(void){
	int_entry_fill();
	init_int_des();
	init_pic();
	idt_table_init();
	syscall_table_init();
	init_timer( (COUNTER_SC0 << 6) + (COUNTER_RW_LOW_HIGH << 4) + (COUNTER_M2 << 1) + COUNTER_BIN);
	//载入中断描述符表
	uint_64 idt_ptr = ((sizeof(idt) - 1) | (((uint_64)(uint_32)idt) << 16));
	asm volatile("lidt %0": : "m"(idt_ptr));
	//put_str("idt loaded \n");
	total_ticks = 0;
	return;
}










