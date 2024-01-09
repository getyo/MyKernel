#ifndef __FSYS__H__
#define __FSYS__H__
#include "ide.h"
//数据块和扇区本身没有一一对应的关系，但为了方便处理，
//这里一个数据块就是一个扇区
typedef struct partition partition;
//超级块大小设置为1个扇区
typedef struct super_block{
	uint_32 magic_num;
	uint_32 block_cnt;
	uint_32 inode_cnt;
	uint_32 start_lba;
	uint_32 block_bm_addr;	//空闲块位图起始扇区
	uint_32 block_bm_sects;	//空闲块位图一共使用的块
	uint_32 inode_bm_addr;  //inode位图起始扇区
	uint_32 inode_bm_sects;	//inode位图扇区数
	uint_32 inode_array_addr;	//inode数组所在起始扇区
	uint_32 inode_array_sects;	//inode数组扇区数
	uint_32 root_index;	//根目录inode索引
	uint_32 dir_size;	//目录项大小，字节为单位
	uint_32 block_start;	//数据块起始地址
	uint_8 pad[460];		
} __attribute__ ((packed)) super_block;

typedef struct inode_entry{
	uint_32 index;
	uint_32 fsize;
	//0~11是1级索引，12是二级索引
	uint_32 block[13];
}inode_entry;

typedef struct inode{
	uint_32 open_cnt;	//打开计数器，用于关闭文件
	bool is_wirting;
	inode_entry * entry;
	list_node tag;
} inode; 

typedef enum ftype{
	FT_UNKNOW,
	FT_REGULAR,
	FT_DIRECTORY
}ftype;

//目录磁盘物理结构
typedef struct dir_entry{ 
	char fname[MAX_FNAME_LENGTH];
	uint_32 inode_index;		//inode在inode数组中的下标
	ftype ft; 
}dir_entry;

//目录内存映像
typedef struct dir{ 
	inode * iptr;
	uint_32 pos;	//目录游标
	uint_8 buf[512];	
}dir;

//完成对各个分区文件系统元数据的初始化工作
void fsys_init();
//构造超级块
void sb_init(super_block * sb,partition * p);
//初始化inode数组
void inode_init(super_block * sb,void *buf);
//初始化空闲块位图
void block_bm_init(super_block * sb,void * buf);
//挂载分区
bool mount(list_node* tag,uint_32 arg);
#endif
