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
void conditional_block(condition_var * cv);
void conditional_notify(condition_var * cv);
#endif

