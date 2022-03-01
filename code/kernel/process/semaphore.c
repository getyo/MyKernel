#include "semaphore.h"
#include "thread.h"
extern struct list_head ready_queue;
struct mutex * init_mutex(struct mutex * m){
	m->smhe.signal = 1;
	m->smhe.reentry_flag = 0;
	init_list(&m->smhe.acquirer);
	m->owner = NULL;
	return m;
}

void lock(struct mutex * m){
	down(m);
}

void unlock(struct mutex * m){
	up(m); 
}

void down(struct mutex * m){
	enum int_status old_status = int_disable();
	struct thread * t = get_running();
	//确保锁对同一线程的可重入
	if(m->owner != NULL && t == m->owner) 
	{
		++m->smhe.reentry_flag;
		goto end;
	}
	while(m->smhe.signal != 1)
	{
		ASSERT(!lst_find(&m->smhe.acquirer,&t->ready_tag))
		thread_block(t,&m->smhe.acquirer);
		ASSERT(get_int_status() == INT_OFF);
	}
	//put_int(m->smhe.signal);
	ASSERT(m->smhe.signal == 1);
	m->smhe.signal--;
	ASSERT(m->smhe.signal == 0);
	m->owner = t;
end:
	set_int_status(old_status);	
}

void up(struct mutex * m){
	enum int_status old_status = int_disable();
	ASSERT(!m->smhe.signal);
	if(m->smhe.reentry_flag) 
	{
		--m->smhe.reentry_flag;
		goto end;
	}
	m->smhe.signal++;
	ASSERT(m->smhe.signal == 1);
	if(!lst_empty(&m->smhe.acquirer)){
		struct thread * t = struct_get(struct thread,ready_tag,lst_pop(&m->smhe.acquirer));
		thread_unblock(t);
		m->owner = t;
	}
	m->owner = NULL;
end:
	ASSERT(m->smhe.reentry_flag >= 0);
	set_int_status(old_status);
}

void thread_block(struct thread * t,struct list_head * waiters){
	ASSERT(get_int_status() == INT_OFF);
	ASSERT(t->status != BLOCK && t->status != FINISHED);
	t->status = BLOCK;
	lst_push(waiters,&t->ready_tag);
	t->tick = 1;
	int_enable();
	while(t->tick == 1);
	int_disable();
}

void thread_unblock(struct thread *t){
	ASSERT(get_int_status() == INT_OFF);
	ASSERT(t->status == BLOCK);
	t->status = RUNNING;
	//put_str(t->name);put_str(" unblock remove\n");
	lst_head_insert(&ready_queue,&t->ready_tag);
}







