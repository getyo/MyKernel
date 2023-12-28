#include "semaphore.h"
#include "thread.h"
extern struct list_head ready_queue;
struct mutex * init_mutex(struct mutex * m){
	sema_init(&m->smhe);
	set_sema_sgcnt(&m->smhe,1);
	m->reentry_flag = 0;
	m->owner = NULL;
	return m;
}

sema * sema_init(sema *s)
{
	s->signal = 0;
	init_list(&s->acquirer);
	return s;
}

void set_sema_sgcnt(sema *s,int cnt){
	s->signal = cnt;
}

struct thread * sema_down(sema * s)
{
	enum int_status old_status = int_disable();
	struct thread * t = get_running();
	//由于线程会多次进入下面的循环，且只有第一次循环需要放入队列
	//所以设置tag，标志是否是第一次循环
	int tag = 0;
	while(s->signal < 1)
	{
		if(!tag){
			ASSERT(!lst_find(&s->acquirer,&t->ready_tag));
			lst_push(&s->acquirer,&t->ready_tag);
			tag = 1;
		}
		thread_block(t);
		ASSERT(get_int_status() == INT_OFF);
	}
	s->signal--;
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
	t->status = READY;
	//put_str(t->name);put_str(" unblock remove\n");
	lst_head_insert(&ready_queue,&t->ready_tag);
}







