#include "proc.h"
tss ts;
extern void switch_on(proc * cur,proc * next);
extern uint_32 get_paddr(uint_32 vaddr);
extern struct thread * create_thread(char * name,uint_32 priority,thread_fun * function,void * fun_arg);
extern void exit_int();

void exchange_esp0 (thread * t){
	ts.esp0 = (uint_32)t + PAGE_SIZE;
}

void init_proc_data(){
	//原来就存在三个段描述符，,算上基址一共4个，现在要新建用户的代码段
	//和数据段，一共6个
	lgdt(7);
	gdt_des * gdt_ptr = (gdt_des *)GDT_BASE;	

	//新建用户数据段
	*(gdt_ptr + 4) = make_seg_des(0,0xfffff,\
			SG_G_4K + SG_DB_32,\
			SG_P + SG_DPL_3 + SG_NS + SG_TYPE_DW);
	//新建用户代码段
	*(gdt_ptr + 5) = make_seg_des(0,0xfffff,\
			SG_G_4K + SG_DB_32,\
			SG_P + SG_DPL_3 + SG_NS + SG_CODE);
	//新建TSS段选择子
	*(gdt_ptr + 6) = make_seg_des((uint_32)&ts,sizeof(ts)-1,\
			SG_G_BYTE,\
			SG_P + SG_DPL_0 + SG_S + 9);
	
	memset_8(&ts,sizeof(tss),0);
	ts.ss0 = SEL_DATA;
	//esp0在创建进程时填写
	uint_16 temp_tss = SEL_TSS;
	asm("ltr %0"::"m"(temp_tss):);
}

gdt_des make_seg_des(uint_32 base,uint_32 limit,uint_8 attr_lim1,uint_8 type){
	gdt_des d;
	d.base1 = base >> 24;
	d.attr_lim1 = attr_lim1 + (limit >> 16);
	d.type = type;
	d.base2 = (base >> 16) & (0x00ff);
	d.base3 = base & 0x0000ffff;
	d.lim2 = limit & 0x0000ffff;

	return d;
}

void lgdt(uint_16 limit){
	//*4是因为一个描述符4字节
	uint_64 gdt = GDT_BASE;
	gdt = (gdt << 16) + limit * 8;
	asm("lgdt %0"::"m"(gdt):);
}

proc * proc_start(char * name,uint_32 priority,thread_fun * function,void * fun_arg){
	proc * p = create_thread(name,priority,function,fun_arg);
	init_proc(p,function,fun_arg);
	create_proc_page(p);
}

proc * init_proc(proc * p,proc_fun * fun,void * fun_arg){
	p->stack_top = ((uint_32)p + PAGE_SIZE - sizeof(proc_st));
	memset_32((uint_32)p->stack_top + 4,8,0);
	proc_st * stack_top = p->stack_top;
	memset_8(stack_top,sizeof(proc_st),0);
	stack_top->ds = stack_top->fs = stack_top->es = SEL_UD;
	//用户进程无法访问显存
	stack_top->thread_fun = process_fun;
	stack_top->fun_arg = fun_arg;
	stack_top->cs = SEL_UC;
	stack_top->eip = fun;
	stack_top->eflags = EF_MBS + EF_IFEN + EF_IOPL0;
	stack_top->ss_new = SEL_UD;
	stack_top->esp_new = (uint_32)p + PAGE_SIZE;
	
	p->u_vaddr.start_addr = U_VIR_START;
	p->u_vaddr.size = U_VIR_SIZE;
	p->u_vaddr.bit_map.map = malloc_page(KERNEL_F,24);
	p->u_vaddr.bit_map.size = U_VIR_SIZE;
	
	init_bit_map(&p->u_vaddr.bit_map);
	lst_push(&ready_queue,&p->ready_tag);
	lst_push(&all_queue,&p->all_tag);
}

void create_proc_page(proc * p){
	//复制内核目录表
	uint_32 dir_vaddr = (uint_32)malloc_page(KERNEL_F,1);
	p->page_dir = (void *)get_paddr(dir_vaddr);
	memcopy(dir_vaddr,KERNEL_DIR,PAGE_SIZE);
	//将页目录表最后一项指向当前页
	uint_32 pde = ((uint_32)p->page_dir & 0xfffff000) + PG_US_U + PG_RW_W + PG_P;
	*(uint_32 *)(dir_vaddr + PAGE_SIZE - 4) = pde;
	
	//在内核中创建用户3G的io位图
	size_t bitmap_size = 3;
	//DEBUG_MSG("bitmap_size = ",bitmap_size);
	void * iomap = malloc_page(KERNEL_F,bitmap_size);
	while(1);
	//初始化用户内存池
	p->u_vaddr.start_addr = 0;
	p->u_vaddr.size = 3*PAGE_SIZE;
	p->u_vaddr.bit_map.size = bitmap_size;
	p->u_vaddr.bit_map.map = iomap;
	init_bit_map(&p->u_vaddr.bit_map);
}

void process_fun(){
	int_enable();
	//激活进程页表
	proc * p = get_running();
	proc_st * stack_top = (proc_st *) p->stack_top;
	asm volatile ("mov %0,%%eax;mov %%eax,%%cr3;"::"m"(p->page_dir):);
	//开辟用户栈,并将地址填入中断栈
	bool st_f = create_page(USER_F,U_ST);
	ASSERT(st_f);
	//压入函数参数
	stack_top->esp_new = U_ST - 8;
	*(uint_32 *)(U_ST - 4) = stack_top->fun_arg;
	//malloc_page(USER_F,1);
	asm volatile ("mov %0,%%esp; jmp %1" \
			:\
			:"g"(&stack_top->intr_vec),"m"(exit_int) \
			:);
}



