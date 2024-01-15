#include "pool.h"
#include "bitmap.h"
#include "global.h"
#include "smalloc.h"
#include "data_type.h"
#include "debug.h"
#include "print.h"
#include "thread.h"
#include "semaphore.h"
extern struct pool kernel_pool,user_pool;
extern struct pool kernel_vaddr;
mutex mem_lock;

void * alloc_vaddr(enum pool_flags f,int page_cnt){
	pool * temp;
	if(f == KERNEL_F)
		temp = &kernel_vaddr.bit_map;
	else {
		//获取进程pcb
		proc * p = get_running();
		temp = &p->u_vaddr;
	}
	ASSERT(page_cnt <= temp->bit_map.size);
	int bit_index = bit_alloc(&temp->bit_map,page_cnt);
	if(bit_index != -1) 
		return (void *)(temp->start_addr + bit_index * PAGE_SIZE);
	else
		return NULL;
}

//虚拟地址可以连续分配页面，但是物理内存必须一页一页分配
void * alloc_mem(enum pool_flags f){
	pool * temp;
	if(f == KERNEL_F)
		temp = &kernel_pool;
	else 
		temp = &user_pool;
	int bit_index = bit_alloc(&temp->bit_map,1);
	if(bit_index  != -1)
		return (void *)(temp->start_addr + bit_index * PAGE_SIZE);
	return NULL;
}

//以页为大小分配内存，返回内存指针，如果失败返回NULL
void* malloc_page(enum pool_flags f,uint_32 page_cnt){
	lock(&mem_lock);
	void * vaddr = alloc_vaddr(f,page_cnt);
	if(vaddr == NULL){
		printk("virtual address has run out\n");
		return NULL;
	}
	uint_32 paddr;
	uint_32 i = 0;
	void * pte_check = NULL;
	for(;i < page_cnt;i++){
		if(f == KERNEL_F){
			paddr = alloc_mem(f);
			if(!paddr){
				printk("physical memory has run out\n");
				return NULL;
			}
			pte_check = add_pte((uint_32)vaddr + i * PAGE_SIZE,paddr,PG_US_S | PG_RW_W | PG_P);
		}
		else{
			paddr = alloc_mem(f);
			if(!paddr){
				printk("physical memory has run out\n");
				return NULL;
			}
			pte_check = add_pte((uint_32)vaddr + i * PAGE_SIZE,paddr,PG_US_U | PG_RW_W | PG_P);
		}
		ASSERT(pte_check != NULL);
	}
	unlock(&mem_lock);
	return (void *)vaddr;
}


//在指定虚拟地址创建一页，失败返回0
bool create_vaddr(pool_flags f,void * vaddr)
{
	pool * temp;
	size_t index;
	if(f == KERNEL_F){
		temp = &kernel_vaddr.bit_map;
		index = ((uint_32)vaddr - ALLOCABLE_START) / PAGE_SIZE;
	}
	else {
		//获取进程pcb
		proc * p = get_running();
		temp = &p->u_vaddr;
		index = (size_t)vaddr / PAGE_SIZE;
	}
	ASSERT(vaddr < temp->size);
	ASSERT(index < temp->bit_map.size);
	if(bit_test(&temp->bit_map,index)) return false;
	else {
		bit_set(&temp->bit_map,index);
		return true;
	}
}

//在指定的地址创建1页，如果创建失败返回0
bool create_page(pool_flags f,void * addr)
{
	lock(&mem_lock);
	//按页大小取整
	addr = (void*)((uint_32)addr & 0xfffff000);
	if(!create_vaddr(f,addr)){
		unlock(&mem_lock);
		return false;
	}
	void * pte_check = NULL;
	if(f == KERNEL_F)
			pte_check = add_pte((uint_32)addr,(uint_32)alloc_mem(KERNEL_F),PG_US_U + PG_RW_W + PG_P);
		else
			pte_check = add_pte((uint_32)addr,(uint_32)alloc_mem(USER_F),PG_US_U + PG_RW_W + PG_P);
	ASSERT(pte_check != NULL);
	unlock(&mem_lock);
	return true;
}


//释放从start_bit_index开始的size个位，如果这些位中含有原来不为1的位，返回该位位标
//否则返回0
uint_32 free_pool(struct pool * p,uint_32 start_bit_index,uint_32 size){
	int i = 0;
	for(;i < size;i++){
	 	if(!bit_reset(&p->bit_map,start_bit_index + i))
	 		return start_bit_index + i;
	 }
	 return 0;
}

//释放虚拟指定内存池对应虚拟地址，失败返回0，成功返回1
int free_page(enum pool_flags f,void * vaddr,uint_32 page_cnt){
	lock(&mem_lock);
	ASSERT(vaddr != NULL);
	if(f = KERNEL_F) {
		//释放虚拟内存位图
		uint_32 vbit_start = ((uint_32)vaddr - 0xc0201000) / PAGE_SIZE;
		uint_32 freed_vaddr;
		if(freed_vaddr = free_pool(&kernel_vaddr,vbit_start,page_cnt)) 
			goto failed;
		
		//释放物理内存位图
		int i;
		for(i = 0;i < page_cnt;i++){
			//获取要释放内存的物理内存地址
			uint_32 paddr_start = get_paddr((uint_32)vaddr + i*PAGE_SIZE);
			//将内存起始地址转化为位图的位标
			uint_32 pbit_start = (paddr_start- KERNEL_START)/PAGE_SIZE;
			uint_32 freed_paddr;
			//清楚物理内存位图并删除pte
			if(freed_paddr = free_pool(&kernel_pool,pbit_start,1) \
			  || !reset_pte((uint_32)vaddr + i*PAGE_SIZE))
				goto failed;
		}
	}
	else{
		proc * p = get_running();
		ASSERT((uint_32)vaddr < 0xc0000000);
		//释放虚拟内存位图
		uint_32 vbit_start = (uint_32)vaddr / PAGE_SIZE;
		uint_32 freed_vaddr;
		if(freed_vaddr = free_pool(&p->u_vaddr,vbit_start,page_cnt)) 
			goto failed;
		
		//释放物理内存位图
		int i;
		for(i = 0;i < page_cnt;i++){
			//获取要释放内存的物理内存地址
			uint_32 paddr_start = get_paddr((uint_32)vaddr + i*PAGE_SIZE);
			//将内存起始地址转化为位图的位标
			uint_32 pbit_start = (paddr_start- user_pool.start_addr)/PAGE_SIZE;
			uint_32 freed_paddr;
			//清楚物理内存位图并删除pte
			if(freed_paddr = free_pool(&user_pool,pbit_start,1) \
			  || !reset_pte((uint_32)vaddr + i*PAGE_SIZE))
				goto failed;
		}
	}
	unlock(&mem_lock);
	return 1;
	failed:
		unlock(&mem_lock);
		return 0;
		
}

//初始化内存描述符数组
void mem_decs_init (mem_block_decs * decs)
{
	uint_32 type = 1024, i = 0;
	for(;i < MBLOCK_TYPE;i++){
		decs[i].type = type;
		decs[i].perarena_cnt = PAGE_SIZE - sizeof(mem_block_decs);
		init_list(&decs[i].freelist);
		type /= 2;
	}
}

//返回需求的内存
void * sys_malloc(uint_32 size){
	pool * pp;
	pool_flags f;
	arena * a;
	list_node * felem;
	thread * t = get_running();
	if((uint_32)t->page_dir == 0x100000){
		f = KERNEL_F;
		pp = &kernel_pool;
	}
	else {
		f = USER_F;
		pp = &user_pool;
	}
	if(size > pp->size) return NULL;
	
	lock(&mem_lock);
	//如果大于1024，需要特殊处理
	if(size > 1024){
		//获得需要多少页的内存,注意向上取整，一定会产生浪费
		a = malloc_page(f,DIV_UP(size + sizeof(arena),PAGE_SIZE));
		a->big = true;
		a->cnt = DIV_UP(size + sizeof(arena),PAGE_SIZE);
		a->owner = NULL;
		unlock(&mem_lock);
		return (void *)(a + 1);
	}
	
	//寻找合适大小的描述符
	int i = MBLOCK_TYPE-1;
	for(;i >= 0;--i)
		if(size <= mdecs[i].type) break;
	//如果没有arena可用，需要创建arena
	if(lst_empty(&mdecs[i].freelist))
	{	
		a = malloc_page(f,1);
		a->big = false;
		a->cnt = 0;
		a->owner = &mdecs[i];
		//将新的arena划分内存块
		mblock_cut(a,mdecs[i].type);
	}
	unlock(&mem_lock);
	felem = lst_pop(&mdecs[i].freelist);
	++a->cnt;
	return felem;
}

//将新建的arena划分内存块，并将内存块添加到对应的mblock中
void mblock_cut(arena * a,uint_32 size)
{
	mem_block * m;
	char * ptr = (char *)(a+1);
	int i = 0,cnt = (PAGE_SIZE - sizeof(arena)) / mdecs[i].type;
	
	for(;i < cnt;i++) 
	{
		m = (mem_block *)ptr;
		lst_push(&a->owner->freelist,&m->tag);
		ptr += a->owner->type;	
	}
}


//释放所指向的内存，实质为内存块的释放，如果内存块全部释放，\
则需要释放所在的arena
void sys_free(void * m)
{
	pool_flags f;
	thread * t = get_running();
	mem_block * mb = m;
	if((uint_32)t->page_dir == 0x100000)
		f = KERNEL_F;
	else f = USER_F;
	
	arena * a = elem2arena(m);
	if(a->big)
	{
		free_page(f,a,a->cnt);
		goto end;
	}
	
	if(--a->cnt == 0) free_page(f,a,1);
	else lst_push(&a->owner->freelist,&mb->tag);
end:
	return;
}












