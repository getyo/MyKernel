#include "init_int.h"
#include "print.h"
#include "debug.h"
#include "smalloc.h"
#include "pool.h"
#include "thread.h"
#include "semaphore.h"
#include "console.h"
#include "proc.h"
#include "syscall.h"
#include "stdio.h"
#include "malloc.h"
#include "ide.h"
#include "stdio_k.h"
#include "fsys.h"

void print(uint_32 n);
int main(void){
	set_cursor(0);
	int_disable();
	init_int();
	put_str("intr init \n");
	init_pool();
	put_str("pool init \n");
	init_thread_list();
	put_str("thread init \n");
	init_console();
	put_str("console init \n");
	init_keyboard();
	put_str("keyboard init \n");
	init_proc_data();
	console_put_str("proc init \n");
	mem_decs_init(mdecs);
	console_put_str("mem init \n");
	int_enable();
	ide_init();
	fsys_init();
	printk("fsys init done\n");
	lst_traverse(&part_lst,mount,"sdb0");
	printk("sdb0 has mounted\n");
	printk("root sector:%d\n",cur_part->sb->block_start -1);
	//proc_start("name",10,print,a);
	reopen_dir("/",&root_dir);

	char * buf = sys_malloc(BLOCK_SIZE);
	int fd;
/*
	int fd = open_file("/test",O_WR);
	if(fd != -1)
		printk("open file success\n");

	buf = "test has been wirtten\n";
	set_fpos(fd,0);
	write_file(fd,buf,BLOCK_SIZE);
	close_file(fd);

	memset_8(buf,BLOCK_SIZE,0);
	fd = open_file("/test",O_WR);
	if(fd != -1)
		printk("open file success\n");
	set_fpos(fd,0);
	read_file(fd,buf,BLOCK_SIZE);
	printk("%s",buf);
	close_file(fd);
*/	

	if(!create_file(&root_dir,"test_dir",FT_DIRECTORY,BLOCK_SIZE)){
		printk("create directory flied : test_dir\n");	
	}
	reload_root();
	print_dir(&root_dir);

	dir * d = sys_malloc(sizeof(dir));
	if(!open_dir("/test_dir/",d)){
		printk("open dir filed\n");
	}
	
	if(!create_file(d,"t0",FT_REGULAR,BLOCK_SIZE)){
		printk("create file flied : t0\n");	
	}
	fd = open_file("/test_dir/t0",O_WR);
	if(fd != -1)
		printk("open file success\n");
	set_fpos(fd,0);
	buf = "t0 has been written\n";
	write_file(fd,buf,BLOCK_SIZE);
	close_file(fd);

	fd = open_file("/test_dir/t0",O_WR);
	if(fd != -1)
		printk("open file success\n");
	set_fpos(fd,0);
	read_file(fd,buf,BLOCK_SIZE);
	printk("%s",buf);

	if(!create_file(&root_dir,"test_file",FT_REGULAR,BLOCK_SIZE)){
		printk("create file test_file filed\n");
	}
	reload_root();
	print_dir(&root_dir);
	
	sys_cd("/test_dir/");
	print_dir(get_running()->workdir);
	return 0;
}

void print(uint_32 n){
	uint_32 p = malloc(2);
	printf("the memory is %x",p);
}


