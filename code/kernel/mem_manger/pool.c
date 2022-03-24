#include "bitmap.h"
#include "debug.h"
#include "data_type.h"
#include "string.h"
#include "global.h"
#include "pool.h"
#include "smalloc.h"
#include "semaphore.h"

extern mutex mem_lock;
void init_pool(){
	//可以看一下loader.lst文件，起始地址位0x900，偏移地址为0x209
	//存放变量为total_mem_size
	uint_32 phy_size = *((uint_32 *)0xc0000b09);
	//低端1M内存不可被占用
	kernel_pool.start_addr = KERNEL_START;
	kernel_pool.size = (phy_size - KERNEL_START)/2;
	user_pool.start_addr = KERNEL_START + kernel_pool.size;
	user_pool.size = kernel_pool.size;
	
	//DEBUG_MSG("total_mem = ",phy_size);
	//DEBUG_MSG("kernel pool size = ",kernel_pool.size);
	//初始化内存位图
	kernel_pool.bit_map.map = (void *) KERNEL_BITMAP;	//内核物理内存位图起始地址0x9a000
	kernel_pool.bit_map.size = kernel_pool.size;
	init_bit_map(&kernel_pool.bit_map);
	user_pool.bit_map.map = (void *)( KERNEL_BITMAP + (kernel_pool.size/PAGE_SIZE));	//用户物理内存位图起始地址为0x9af80
	//DEBUG_MSG("user_pool_map :",user_pool.bit_map.map );
	user_pool.bit_map.size = user_pool.size;
	init_bit_map(&user_pool.bit_map);
	
	//初始化虚拟内存位图 
	kernel_vaddr.size = KERNEL_VIR_MEM_SIZE;
	kernel_vaddr.start_addr = 0xc0000000 + KERNEL_START;
	kernel_vaddr.bit_map.map = KERNEL_VIR_MAP;
	kernel_vaddr.bit_map.size = (kernel_vaddr.size - KERNEL_START) / PAGE_SIZE;
	init_bit_map(&kernel_vaddr.bit_map);
	init_mutex(&mem_lock);
}

void * get_pde_ptr(uint_32 vaddr){
	return (void *)(((vaddr >> 20) ^ (0xfffff000)) &(0xfffffffc));
}

void * get_pte_ptr(uint_32 vaddr){
	return (void *)(((vaddr >> 10) ^(0xffc00000)) &(0xfffffffc));
}

//增加页表项，并返回页表所指内存，如果该页表已经存在，则返回NULL
void * add_pte(uint_32 vaddr,uint_32 paddr,uint_8 attr){
	uint_32 * pde = (uint_32 *)get_pde_ptr(vaddr);
	if(!(*pde & 0x00000001)){
		//如果该地址对应页表不存在，需要申请内存
		uint_32 pte_addr = malloc_page(KERNEL_F,1);
		//初始化申请到的内存
		memset_8(pte_addr,PAGE_SIZE,0);
		//设置pde表项
		//注意pde中的前20位是物理地址
		memset_32(pde,1,((uint_32)get_paddr(pte_addr) & 0xfffff000) + attr);
	}
	
	uint_32 * pte = (uint_32 *)get_pte_ptr(vaddr);
	if(!(*pte & 0x00000001)) {
		memset_32(pte,1,(paddr & 0xfffff000) + attr);
		/*DEBUG_MSG("pde = ",*pde);
		put_str("pde addr = ");put_int(pde);put_char('\n');
		DEBUG_MSG("pte = ",*pte);
		put_str("pte addr = ");put_int(pte);put_char('\n');*/
		return (void *)vaddr;
	}
	else
	 	return NULL;
}

uint_32 get_paddr(uint_32 vaddr){
	uint_32 pte = *(uint_32 *)get_pte_ptr(vaddr);
	return (pte & 0xfffff000);
}


//将vaddr对应的pte内存清0
int reset_pte(uint_32 vaddr){
	ASSERT(vaddr != 0);
	uint_32 * pte = (uint_32 *)get_pte_ptr(vaddr);
	if(!(*pte & 0x00000001))
		return 0;
	
	memset_32(pte,1,0);
	return 1;
}









