#include "fsys.h"
#include "bitmap.h"
#include "string.h"
#include "global.h"
#include "smalloc.h"

void super_block_init(super_block * sb,partition * p){
	//构建并写入超级块
	memset_8(sb,sizeof(super_block),0);
	sb->magic_num = FS_MAGIC;
	sb->inode_cnt = FS_MAX_INODE_CNT;
	sb->start_lba = p->start_lba;
	sb->inode_array_sects = DIV_ROUND_UP(sb->inode_cnt * sizeof(inode_entry),SECTOR_SIZE);	
	sb->inode_bm_sects = DIV_ROUND_UP(sb->inode_cnt,SECTOR_BIT);
	printk("lba_cnt %d,inode_array_sec %d,inode_bm_sec %d\n",
		p->lba_cnt,sb->inode_array_sects,sb->inode_bm_sects);
	sb->block_cnt = p->lba_cnt - sb->inode_array_sects \
			- sb->inode_bm_sects \
			- 3;
	printk("block_cnt %d\n",sb->block_cnt);
	//上述式子算出空闲块位图+空闲块总的扇区数
	//注意下面的计算，直接让位图管理了上述两者的和，
	//所以位图中一定有一部分是不能用的,
	//那部分在初始化位图时就要初始化为1
	sb->block_bm_sects = DIV_ROUND_UP(sb->block_cnt,8*SECTOR_SIZE);
	sb->block_cnt = sb->block_cnt - sb->block_bm_sects;
			
	sb->block_bm_addr = sb->start_lba + 2;
	sb->inode_bm_addr = sb->block_bm_addr + sb->block_bm_sects;		
	sb->inode_array_addr = sb->inode_bm_addr + sb->inode_bm_sects;
	uint_32 root_sector = sb->inode_array_addr + sb->inode_array_sects;
	sb->root_index = 0;
	sb->dir_size = sizeof(dir_entry);
	sb->block_start = sb->inode_array_addr + sb->inode_array_sects + 1;	
}

void block_bm_init(super_block * sb,void * buf){
	bitmap 	bm;
	bm.map = buf;
	//传过来的参数中size以字节为单位，但是bitmap中的size是位的多少
	bm.size = sb->block_bm_sects * 8 * SECTOR_SIZE;
	init_bit_map(&bm);
	//将多余的位设置成1，这些位并没有用处
	uint_32 i;
	for(i = sb->block_cnt;i < bm.size;++i){
		bit_set(&bm,i);
	}
	char * p = buf;
	printk("last : %x\n",*(p+511));
}

void inode_init(super_block * sb,void * buf){
	inode_entry * ia = (inode_entry *)buf;
	ia[0].index = sb->root_index;
	ia[0].fsize = sb->dir_size * 2;
	ia[0].block[0] = sb->block_start - 1;
}

void fsys_init(){
	int i;
	uint_32 buf_size;
	char * buf;
	super_block sb;
	dir_entry * d;
	for(i = 0;i < hd_cnt;++i){
		disk * hd = &channel[i/2].mydisk[i%2]; 
		//0号裸盘不处理
		if(!i) continue;
		int j = 0;
		partition * p = NULL;
		for(;j < 12;++j){
			if(j < 4) p = &hd->part_p[j];
			else p = &hd->part_l[j-4];
			if(!p->lba_cnt) continue;
			//构建超级块
			read_hd(hd,&sb,p->start_lba + SUPER_BLOCK_LBA,1);
			if(true){
				//如果没有文件系统，则创建相应的文件系统
				super_block_init(&sb,p);
				printk("sb lba:%d\n sb magic :%x\n sb block_cnt : %d\n",\
					p->start_lba + SUPER_BLOCK_LBA,sb.magic_num,\
					sb.block_cnt);
				write_hd(hd,&sb,p->start_lba + SUPER_BLOCK_LBA,1);
				//构建空闲块位图
				//首先找出要分配的内存的最大值，一次性分配缓存
				buf_size = GREATER(sb.block_bm_sects * SECTOR_SIZE,\
					GREATER(sb.inode_bm_sects * SECTOR_SIZE,\
						sb.inode_array_sects * SECTOR_SIZE));
				buf = sys_malloc(buf_size);
				printk("buf_size: %x\n",buf_size);
				block_bm_init(&sb,buf);
				write_hd(hd,buf,sb.block_bm_addr,sb.block_bm_sects);
				
				//构建inode数组以及位图
				memset_8(buf,buf_size,0);
				//inode的位图本身除了根目录以外其他都是0
				buf[0] = 0x1;	//小端优先
				//4096个inode，位图正好1扇区
				write_hd(hd,buf,sb.inode_bm_addr,sb.inode_bm_sects);
				buf[0] = 0x0;
				inode_init(&sb,buf);
				write_hd(hd,buf,sb.inode_array_addr,sb.inode_array_sects);
				
				//构建根目录
				memset_8(buf,sizeof(inode_entry),0);
				d = (dir_entry *) buf;
				//根目录的当前目录和上级目录都是本身
				memcopy(".",d[0].fname,2);
				d[0].inode_index = sb.root_index;
				d[0].ft = FT_DIRECTORY;
				memcopy("..",d[1].fname,3);
				d[1].inode_index = sb.root_index;
				d[1].ft = FT_DIRECTORY;
				write_hd(hd,buf,sb.block_start - 1,1);
				sys_free(buf);
			}
			//这里可以根据魔数判断文件系统类型
			//但现阶段不做这个工作
		}
	}
}

bool mount (list_node * tag,uint_32 arg){
	partition * p = (partition *)struct_get(partition,tag,tag);
	char * name = (char *) arg;
	if(strcmp(p->name,name)) return true;
	//读入超级块
	super_block * buf = sys_malloc(SECTOR_SIZE);
	ASSERT(buf != NULL);
	read_hd(p->mydisk,buf,p->start_lba + 1,1);
	p->sb = buf;
	
	//读入空闲块位图
	buf = sys_malloc(p->sb->block_bm_sects * SECTOR_SIZE);
	ASSERT(buf != NULL);
	uint_32  bm_start = p->sb->block_bm_addr + p->start_lba;
	read_hd(p->mydisk,buf,bm_start,p->sb->block_bm_sects);
	p->block_bm = sys_malloc(sizeof(bitmap));
	ASSERT(p->block_bm != NULL);
	p->block_bm->map = buf;
	p->block_bm->size = p->sb->block_bm_sects * 8 * SECTOR_SIZE;

	//读入inode位图
	buf = sys_malloc(p->sb->inode_bm_sects * SECTOR_SIZE);	
	ASSERT(buf!=NULL);
	bm_start = p->sb->inode_bm_addr + p->start_lba;
	read_hd(p->mydisk,buf,bm_start,p->sb->inode_bm_sects);
	p->inode_bm = sys_malloc(sizeof(bitmap));
	ASSERT(p->inode_bm != NULL);
	p->inode_bm->map = buf;
	p->inode_bm->size = p->sb->inode_bm_sects * 8 * SECTOR_SIZE;
	
	//读入根目录
	return false;
}
