#include "semaphore.h"
#include "thread.h"
extern struct list_head ready_queue;
struct mutex * init_mutex(struct mutex * m){
	sema_init(&m->smhe);
	m->reentry_flag = 0;
	m->owner = NULL;
	return m;
}

sema * sema_init(sema *s)
{
	s->signal = 1;
	init_list(&s->acquirer);
	return s;
}

struct thread * sema_down(sema * s)
{
	enum int_status old_status = int_disable();
	struct thread * t = get_running();
	while(s->signal != 1)
	{
		ASSERT(!lst_find(&s->acquirer,&t->ready_tag));
		lst_push(&s->acquirer,&t->ready_tag);
		thread_block(t);
		ASSERT(get_int_status() == INT_OFF);
	}
	ASSERT(s->signal == 1);
	s->signal--;
	ASSERT(s->signal == 0);
	set_int_status(old_status);
	return t;
}

void sema_up(sema * s)
{
	enum int_status old_status = int_disable();
	struct thread * t;
	if(!lst_empty(&s->acquirer))
	{
		t = struct_get(struct thread,ready_tag,lst_pop(&s->acquirer));
		thread_unblock(t);
	} 
	s->signal++;
	set_int_status(old_status);
}

void lock(struct mutex * m){
	enum int_status old_status = int_disable();
	//确保锁的可重入
	if(m->owner != NULL && get_running() == m->owner)
		++m->reentry_flag;
	else
		m->owner = sema_down(m);
	set_int_status(old_status);
}

void unlock(struct mutex * m){
	enum int_status old_status = int_disable();
	//对于重入的线程，只有当重入次数耗尽才会释放锁
	if(m->reentry_flag)
		--m->reentry_flag;
	else{
		sema_up(m);
		m->owner = NULL;
	} 
	set_int_status(old_status);
}

/*
void down(struct mutex * m){
	enum int_status new_status = int_disable();
	struct thread * t = get_running();
	//确保锁对同一线程的可重入
	if(m->owner != NULL && t == m->owner) 
	{
		++m->reentry_flag;
		goto end;
	}
	while(m->smhe.signal != 1)
	{
		ASSERT(!lst_find(&m->smhe.acquirer,&t->ready_tag));
		thread_block(t);
		lst_push(&m->smhe.acquirer,&t->ready_tag);
		ASSERT(get_int_status() == INT_OFF);
	}
	//put_int(m->smhe.signal);
	ASSERT(m->smhe.signal == 1);
	m->smhe.signal--;
	ASSERT(m->smhe.signal == 0);
	m->owner = t;
end:
	set_int_status(new_status);	
}

void up(struct mutex * m){
	enum int_status new_status = int_disable();
	ASSERT(!m->smhe.signal);
	if(m->reentry_flag) 
	{
		--m->reentry_flag;
		goto end;
	}
	m->smhe.signal++;
	ASSERT(m->smhe.signal == 1);
	if(!lst_empty(&m->smhe.acquirer)){
		struct thread * t = struct_get(struct thread,ready_tag,lst_pop(&m->smhe.acquirer));
		thread_unblock(t);
	}
	m->owner = NULL;
end:
	ASSERT(m->smhe.reentry_flag >= 0);
	set_int_status(new_status);
}*/

void thread_block(struct thread * t){
	ASSERT(get_int_status() == INT_OFF);
	ASSERT(t->status != BLOCK && t->status != FINISHED);
	t->status = BLOCK;
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







