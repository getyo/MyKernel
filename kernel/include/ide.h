#ifndef __IDE__HH
#define __IDE__HH
#include "data_type.h"
#include "bitmap.h"
#include "list.h"
#include "semaphore.h"
#include "condition_var.h"

typedef struct partition partition;
typedef struct disk disk;
typedef	struct ide_channel ide_channel;
typedef struct partition_entry partition_entry;
typedef struct boot_sector boot_sector;

//定义分区
typedef struct partition{
	char name[8];
	list_node tag;
	uint_32 start_lba;	//起始扇区地址
	uint_32 end_lba;	//结束扇区地址
	bool is_ext;		//是否为扩展分段
	disk * mydisk;		//所属磁盘
	bitmap * sector_bitmap 	//扇区位图
}partiton;

//定义磁盘
typedef struct disk{
	char name [16];
	ide_channel * my_channel;	//所属channel
	char dev_no;			//master/slave盘，主为0，从为1
	partition part_p [4];		//四个主分区
	partition part_e [8];		//这里最多支持8个扩展分区，理论上来讲可以支持无限个
}disk;

//定义ide通道
typedef struct ide_channel{
	char name[8];
	uint_32 port_base;	//起始端口号，由于有两个channel，pirmary和secondary \
				所使用的命令端口是不同,pirmary从0x1f0开始，secondray从0x170
	uint_32 req_vec;	//中断号
	bool expecting_intr; 	//如果当前channel被占用，即为ture，表示它期待一个来自硬盘完成工作的中断
	mutex lock;		//互斥通道使用
	sema s;	//用于将在等待磁盘io时将当前线程阻塞
	disk mydisk[2];
}ide_channel;

//定义分区表
typedef struct partition_entry{
	uint_8 active_mark;	//是否含有引导程序，有是0x80,没有是0
	uint_8 start_head;
	uint_8 start_sector;
	uint_8 start_cylinder;
	uint_8 fsys_id;		//文件系统id
	uint_8 end_head;
	uint_8 end_sector;
	uint_8 end_cylinder;
	uint_32 offset;		//关于这个偏移不理解可以看笔记，主要是硬盘逻辑结构的问题
	uint_32 sector_cnt;
}partition_entry;
typedef partition_entry part_entry;
//定义MBR/EBR结构
typedef struct boot_sector{
	char boot_prog[446];
	partition_entry pe[4];
	uint_16 end;
}boot_sector;

//channel的初始化
void channel_init();
//选择硬盘
disk * select_disk(disk * hd);
//指定扇区范围
void select_sector(disk * hd,uint_32 start_lba,uint_8 sector_cnt);
//向通道发出命令
void send_cmd(ide_channel * c,uint_8 cmd);
//判断当前硬盘是否空闲
bool hd_busy(disk * hd);
//读取硬盘扇区
void read_hd(disk * hd,char * buf,uint_32 start_lba,uint_32 sector_cnt);
//写入硬盘扇区
void write_hd(disk * hd,char *buf,uint_32 start_lba,uint_32 size);
//硬盘中断处理函数
void hd_intr();
//硬盘初始化
void disk_init();
void out_partition();
void identify_disk(disk * hd);
void read_partition(disk * hd);
partition * partition_init(partition * part,part_entry * pe,disk * hd);
void ide_init();

#endif
