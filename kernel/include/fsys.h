#ifndef __FSYS__H__
#define __FSYS__H__
#include "ide.h"
#include "semaphore.h"
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
	//注意这里的dirty不是文件被写的标志，只是inode被写的标志
	condition_var * write_cv;	//写文件的条件变量
	condition_var * read_cv;
	mutex * write_lock;		//写文件的互斥量
	mutex * read_lock;		//读文件本身不互斥，但是修改目前正在读的进程数互斥
	bool is_writing;
	int is_reading;
	bool dirty;
	inode_entry * entry;
	list_node tag;
	list proc_list;		//打开该文件的进程链表
	list buf_list;
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
	char * path;
	inode * iptr;
	uint_32 pos;	//目录游标
}dir;

//记录当前根目录
dir root_dir;
//记录当前分区
partition * cur_part;
//文件系统挂载以及初始化相关
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
void read_root(partition *p);

//文件操作相关
//文件打开类型
typedef enum open_flag{
	O_RO,	//只读
	O_WR,	//读写
	O_CRT	//创建
}open_flag;

typedef struct fbuf{
	bool empty;	//为日后优化铺垫，现阶段只要在内存中的fbuf一定不空
	size_t start_pos;
	bool dirty;
	list_node tag;
	char data[BLOCK_SIZE];
}fbuf;

//文件描述符
typedef struct file{
	char * path;
	char * fname;
	uint_32 fpos;		//文件偏移指针
	open_flag of;
	size_t fsize;		//此大小是文件在内存中的大小，每个进程独立，在关闭文件时才回同步到inode
	inode * iptr;
	bool dirty;
	list buf_list;		//元素是fbuf

}file;
//位图类型
typedef enum bitmap_type{
	BM_BLOCK,
	BM_INODE
}bitmap_type;

/*************inode和block相关操作***************/
//分配inode和block，若成功把位图相应位置1并返回下标，
//否则返回-1
int inode_alloc();
int block_alloc();
//向磁盘中添加inode
bool add_inode(uint_32 i_no,uint_32 *blocks,uint_32 fsize);
//把位图的修改同步到磁盘
void bitmap_sycn(uint_32 bit_index,bitmap_type bmt);
//读取inode,缓存区由主调函数提供，至少两个扇区大小，返回值指向要读取的inode_entry
inode_entry * read_inode(uint_32 index,char * buf);
inode_entry * write_inode(uint_32 i_no,inode_entry *ie,char *buf);
void open_inode(inode *in,uint_32 index);
void init_inode(inode *i,uint_32 open_cnt,inode_entry *entry);
void close_inode(inode * in);
void reload_inode(inode *in,uint_32 index);
//读取inode所指向文件的偏移所在的扇区，缓存区由主调函数提供，至少一个扇区大小，
//返回值指向文件指针所要求的位置
char * read_block(inode_entry * in,uint_32 fpos,char * buf);
char * write_block(inode_entry * in,uint_32 fpos,char *buf);

//目录处理相关
#define MAX_DIR_SEARCH_LENGTH 1024
//记录目录锁搜索结果的结构
typedef struct search_log{
	char search_path[MAX_DIR_SEARCH_LENGTH];
	int depth;
	ftype ft;
}search_log;

/******************目录相关操作********************/
//查找成功时，target就是返回值
//否则返回的NULL，taregt参数指向查找失败的目录项
dir_entry * search_file(char *path,search_log * s_log,dir_entry * target);
bool open_dir(char * path,dir * d);
void close_dir(dir * d);
bool reopen_dir(char * path,dir *d);
typedef enum dir_rmarg{
	REG_RM,		//常规删除
	RECU_RM	//递归删除
}dir_rmarg;
bool delete_dir(char * path,dir_rmarg rmarg);
void print_dir(dir *d);
#define MAX_FILE_BCNT 140
#define INODE_PRIMARY_INDEX_CNT 12
/*******************文件相关操作********************/
#define MAX_OPEN_INODE_CNT 50
int inode_cnt;	//已经打开的文件数量
list inode_list;
mutex flloc_lock;
//目录的创建也使用此函数
bool create_file(dir * p,char *fname,ftype ft,uint_32 fsize);
bool delete_file(dir * p,char * fname);
//打开文件，返回file_table下标,-1代表失败
int open_file(char * path,open_flag f);
bool read_file(int fd,char * dst,size_t size);
bool write_file(int fd,char * src,size_t size);
bool close_file(int fd);
void set_fpos(int fd,size_t pos);
#endif
