#include "thread.h"
#include "interrupt.h"
#include "smalloc.h"
#include "global.h"
#include "string.h" 
#include "semaphore.h"
uint_32 thread_id;
mutex id_lock;
//守护线程指针
thread * deamon;
extern void switch_on (struct thread *,struct thread *);
extern void exchange_esp0(thread * t);
//返回正在运行的线程pcb指针
struct thread * get_running(){
	uint_32 esp;
	asm("movl %%esp,%0":"=r"(esp):);
	return (struct thread *)(esp & (0xfffff000));
}

void schedule(){
	ASSERT(get_int_status() == INT_OFF);
	struct thread * cur = get_running(),* next = NULL;
	if(cur->status == FINISHED){
		//put_str(cur->name);put_str(" finished \n");
		lst_remove(&all_queue,&cur->all_tag);
		if(cur != MAIN_PCB) free_page(KERNEL_F,cur,1);
	}
	else if (cur->status == RUNNING){
		//put_str(cur->name);put_str(" time out \n");
		lst_push(&ready_queue,&cur->ready_tag);
		cur->status = READY;
	}
	else if (cur->status == BLOCK){
		//put_str(cur->name);put_str(" blocked \n");
		ASSERT(!lst_find(&ready_queue,&cur->ready_tag));
	}
	if(lst_empty(&ready_queue)){
		//printk("Demon is selected\n");
		thread_unblock(deamon);
	}
	next = (struct thread *)lst_pop(&ready_queue);
	next = struct_get(struct thread,ready_tag,next);
	ASSERT((uint_32)next%0x1000 == 0);
	ASSERT(next != NULL);
	next->status = RUNNING;
	//为进程加载页表
	if(next->page_dir != NULL) 
		asm volatile ("mov %0,%%eax \n;\
			       mov %%eax,%%cr3;\n" : \
		 	       :"m"(next->page_dir) :);
	//put_str(next->name);put_str(" carry out\n");
	exchange_esp0(next);
	switch_on(cur,next);
}

void print_thread(){
	
}
//调用线程函数
void thread_fun_exc(thread_fun * function,void * fun_arg){
	//put_str("thread_fun_exc \n");
	int_enable();
	function(fun_arg);
	int_disable();
	get_running()->status = FINISHED;
	schedule();
	int_enable();
}

//线程执行完成后返回调度器
void thread_finished()
{
	int_disable();
	get_running()->status = FINISHED;
	schedule();
	int_enable();
}

uint_32 acquire_id(){
	uint_32 t_id;
	lock(&id_lock);
	t_id = thread_id++;
	unlock(&id_lock);
	return t_id;
}

struct thread * create_thread(char * name,uint_32 priority,thread_fun * function,void * fun_arg){
	ASSERT(priority > 0);
	//为pcb分配内存，规定一个pcb一页
	struct thread * t = malloc_page(KERNEL_F,1);
	memcopy(&t->name,name,16);
	t->status = READY;
	t->id = acquire_id();
	t->tick = priority;
	t->priority = priority;
	t->total_tick = 0;
	t->stack_magic = 0x78ffad09;
	t->page_dir = NULL;
	return t;
}

void init_thread(struct thread *t,thread_fun * function,void * arg){
	//页面最低端最为栈
	t->stack_top = (void *)((uint_32)t + PAGE_SIZE - sizeof(struct thread_stack));
	
	//初始化栈内成员
	struct thread_stack * t_st = (struct thread_stack *)t->stack_top; 
	t_st->thread_fun = thread_fun_exc;
	t_st->function = function;
	t_st->fun_arg = arg;
	t_st->esi = t_st->edi = t_st->ebp = t_st->ebx = 0;
	lst_push(&ready_queue,&t->ready_tag);
	lst_push(&all_queue,&t->all_tag);
}

void init_main(){
	struct thread * t = (struct thread *)MAIN_PCB;
	t->stack_top = (struct thread_stack *)(MAIN_PCB + PAGE_SIZE - sizeof(struct thread_stack));
	memcopy(&t->name,"main",5);
	memset_8(&t->name + 5,11,0);
	t->id = thread_id++;
	t->status = RUNNING;
	t->priority = 20;
	t->total_tick = 0;
	t->tick = 20;
	t->stack_magic = 0x78ffad09;
	lst_push(&all_queue,&t->all_tag);
	t->page_dir = (void *)0x100000;
	
	//使得主函数执行完能正常返回调度器
	*(uint_32 *)(MAIN_PCB + PAGE_SIZE - 4) = thread_finished;
}


void init_thread_list(){
	init_list(&ready_queue);
	init_list(&all_queue);
	init_main();
	init_mutex(&id_lock);
	thread_id = 0;
	
	//创建守护线程
	deamon = thread_start("Deamon",10,deamon_fun,NULL);
}

//守护线程函数
void deamon_fun()
{
	//第一次守护线程会和其他线程一样先执行一次
	while(1){
		enum int_status old_status = int_disable();
		if(!lst_empty(&ready_queue))
			thread_block(deamon);
		//printk("Demon carrt out\n");
		asm volatile("sti;hlt;");
	}
}

//线程休眠，主动让出CPU，注意不同于阻塞
void thread_yield ()
{
	enum int_status old_status = int_disable();
	thread * t = get_running();
	ASSERT(!lst_find(&ready_queue,&t->ready_tag));	
	t->status = READY;
	lst_push(&ready_queue,&t->ready_tag);
	t->tick = 1;
	int_enable();
	while(t->tick == 1);
	int_disable();
	set_int_status(old_status);
}


struct thread *thread_start(char * name,uint_32 priority,thread_fun * function,void * fun_arg){
	
	struct thread * t = create_thread(name,priority,function,fun_arg);
	init_thread(t,function,fun_arg);

	return t;
}




