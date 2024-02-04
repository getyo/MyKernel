#ifndef __CONDITION_VAR__HH__
#define __CONDITION_VAR__HH__
#include "semaphore.h"
#include "list.h"
typedef bool condition_fun(void *);
typedef struct {
	condition_fun * fun;
	void * fun_arg;
	struct list_head waiter;
}condition_var;

void init_condition_var(condition_var * cv,condition_fun * fun,void * fun_arg);
void cv_set_arg(condition_var * cv,void * fun_arg);
//如果fun返回true，则不会阻塞，否则加入阻塞队列
void conditional_block(condition_var * cv);
//从阻塞队列中拿出一个线程执行
void conditional_notify(condition_var * cv);
void * actomic_action(void * fun(void * arg),void * arg);
#endif

