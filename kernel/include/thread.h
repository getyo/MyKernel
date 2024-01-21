#ifndef ___THREAD___
#define ___THREAD___
#include "data_type.h"
#include "list.h"
#include "debug.h"
#include "interrupt.h"
#include "smalloc.h"
#include "pool.h"

typedef void thread_fun(void *);
typedef void proc_fun(void *);

//定义线程状态
enum T_STATUS{
	BLOCK,RUNNING,READY,FINISHED
};

//虽然进程栈和线程栈理论上来说可以混合成一个，但为了编程方便
//定义成两个更合适
//定义进程栈
typedef struct {
	//线程栈
	uint_32 edi;
	uint_32 esi;
	uint_32 ebp;
	uint_32 ebx;
	
	//以下参数用于进程第一次调用
	void * thread_fun;
	uint_32 blank ;//用于占位
	
	//中断栈，用于在进程第一次执行thread_fun时 \
	exit_int 所用
	uint_32 intr_vec;	//占位，具体可见kernel.s的exit_int
	uint_32 gs;
	uint_32 fs;
	uint_32 es;
	uint_32 ds;
	uint_32 int_edi;
	uint_32 int_esi;
	uint_32 int_ebp;
	uint_32 int_esp;
	uint_32 int_ebx;
	uint_32 edx;
	uint_32 ecx;
	uint_32 eax;
	
	uint_32 error_code;
	uint_32 eip;
	uint_32 cs;
	uint_32 eflags;
	uint_32 esp_new;
	uint_32 ss_new;
	void * fun_arg;
}proc_st;

//定义线程栈
struct thread_stack{
	uint_32 edi;
	uint_32 esi;
	uint_32 ebp;
	uint_32 ebx;
	
	//以下参数用于线程第一次调用
	void * thread_fun;
	uint_32 blank ;//用于占位
	thread_fun * function;
	void * fun_arg;
};

//需要特别注意，如果这个值设置的过大，会影响到内核栈的大小
#define MAX_OPEN_FILE_PER_PROC 20	//每个进程最多打开20个文件
//实质就是Process Control Block
//线程和进程共用一个结构体
//至于一个结构体到底是线程还是进程，根据page_dir是否为NULL区分
struct thread{
	void * stack_top;
	pool u_vaddr;
	char name [16];
	uint_32 id;
	enum T_STATUS status;
	//还剩的时钟数，每次时钟中断-1
	uint_32 tick;
	//线程优先级，等于一开始的时钟数
	uint_32 priority;
	//线程总共的时钟数
	uint_32 total_tick;
	struct list_node ready_tag;
	struct list_node all_tag;
	
	//页目录表物理地址
	void * page_dir;
	uint_32 stack_magic;

	//如果是进程，这个位置为本身pcb地址
	//如果是线程，记录了所属线程的PCB	
	void * proc;	

	//文件描述符指针数组
	//对于线程来说，他们的fd[0]中保存着进程的fd数组地址
	//因为线程本身并没有独立的文件资源分配权力
	int fd[MAX_OPEN_FILE_PER_PROC];
	//当前进程打开的文件数量
	int file_cnt;
	
	list_node general_tag;
	void* file_lock;
};
typedef struct thread thread;
typedef struct thread proc;
struct list_head all_queue;
struct list_head ready_queue;

//初始化线程相关数据结构
void init_thread_list();
//将主函数包装为进程
void init_main();
//创建线程
struct thread *thread_start(char * name,uint_32 priority,thread_fun * function,void * fun_arg);
struct thread * create_thread(char * name,uint_32 priority,thread_fun * function,void * fun_arg);
void init_thread(struct thread *t,thread_fun * function,void * arg);
//执行线程函数
void thread_fun_exc(thread_fun * function,void * fun_arg);
//线程/进程调度
void schedule();
//获得当前运行pcb
struct thread * get_running();
//互斥获取id
uint_32 acquire_id();
//守护线程函数
void deamon_fun();
//线程休眠
void thread_yield();
//线程执行完成后返回调度器
void thread_finished();
#endif
