#include "condition_var.h"
void init_condition_var(condition_var * cv,condition_fun fun,void * fun_arg){
	cv->fun = fun;
	cv->fun_arg = fun_arg;
	init_list(&cv->waiter);
}

void conditional_block(condition_var * cv){
	bool staisfy = cv->fun(cv->fun_arg);
	if(!staisfy) return;
	enum int_status new_status = int_disable();
	thread *t = get_running();
	//console_put_str(t->name);console_put_str(" block \n");
	lst_push(&cv->waiter,&t->ready_tag);
	thread_block(t);
	set_int_status(new_status);
}

void conditional_notify(condition_var * cv){
	enum int_status new_status = int_disable();
	//console_put_str("conditional_block \n");
	if(!lst_empty(&cv->waiter)){
		thread *t = struct_get(thread,ready_tag,lst_pop(&cv->waiter));
		//console_put_str(t->name);console_put_str(" unblock \n");
		thread_unblock(t);
	}
	set_int_status(new_status);
}
