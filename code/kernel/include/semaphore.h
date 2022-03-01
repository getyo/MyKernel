#ifndef ___SEMPAHORE__H__
#define ___SEMPAHORE__H__
#include "list.h"
#include "interrupt.h"
#include "thread.h"
struct semaphore{
	int signal;
	int reentry_flag; //是否重入标志;如果为0代表没有重入，每一次重入都加1
	struct list_head acquirer;
};

struct mutex{
	struct semaphore smhe;
	struct thread * owner;
};
typedef struct mutex mutex;
typedef struct semaphore semaphore;
struct mutex * init_mutex(struct mutex *);
void lock(struct mutex *);
void down(struct mutex * m);
void up(struct mutex * m);
//将线程t阻塞并将其加入阻塞队列waiters
void thread_block(struct thread *,struct list_head *);
//将线程t解除阻塞，注意并没有将其移出阻塞队列
void thread_unblock(struct thread *t);

#endif
