#ifndef ___SEMPAHORE__H__
#define ___SEMPAHORE__H__
#include "list.h"
#include "interrupt.h"
#include "thread.h"
struct semaphore{
	int signal;
	struct list_head acquirer;
};

struct mutex{
	struct semaphore smhe;
	struct thread * owner;
	int reentry_flag; //是否重入标志;如果为0代表没有重入，每一次重入都加1
};
typedef struct mutex mutex;
typedef struct semaphore semaphore;
typedef struct semaphore sema;

sema * sema_init(sema *s);
void set_sema_sgcnt(sema * s,int cnt);
struct mutex * init_mutex(struct mutex *);
void lock(struct mutex *);
/*
void down(struct mutex * m);
void up(struct mutex * m);
*/
struct thread * sema_down(sema * s);
void sema_up(sema * s);
//将线程t阻塞,注意这里没有让线程加入阻塞队列，如果自己不手动加入就会丢失该线程
void thread_block(struct thread *);
//将线程t解除阻塞，注意并没有将其移出阻塞队列
void thread_unblock(struct thread *t);

#endif
