#include "fsys.h"
#include "bitmap.h"
#include "string.h"
#include "global.h"
#include "smalloc.h"
#include "semaphore.h"
#include "condition_var.h"

//比较器用于判断fbuf中是否含有fpos所指向的内容
static bool fpos_cmp(list_node *tag,size_t fpos){
	fbuf * fb = struct_get(fbuf,tag,tag);
	int_32 diff = fpos - fb->start_pos;
	if(diff >= 0 && diff < BLOCK_SIZE)
		return true;
	else return false;
}
 
static bool fbuf_sycn(list_node * tag,inode * i){
	fbuf * fb = struct_get(fbuf,tag,tag);
	if(!fb->dirty) return false;
	write_block(i,fb->start_pos,fb->data);
	return false;
}

static void fbuf_free(list_node * tag){
	sys_free(struct_get(fbuf,tag,tag));
}

void super_block_init(super_block * sb,partition * p){
	//构建并写入超级块
	memset_8(sb,sizeof(super_block),0);
	sb->magic_num = FS_MAGIC;
	sb->inode_cnt = FS_MAX_INODE_CNT;
	sb->start_lba = p->start_lba;
	sb->inode_array_sects = DIV_ROUND_UP(sb->inode_cnt * sizeof(inode_entry),SECTOR_SIZE);	
	sb->inode_bm_sects = DIV_ROUND_UP(sb->inode_cnt,SECTOR_BIT);
	//printk("lba_cnt %d,inode_array_sec %d,inode_bm_sec %d\n",
	//	p->lba_cnt,sb->inode_array_sects,sb->inode_bm_sects);
	sb->block_cnt = p->lba_cnt - sb->inode_array_sects \
			- sb->inode_bm_sects \
			- 3;
	//printk("block_cnt %d\n",sb->block_cnt);
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
}

void inode_init(super_block * sb,void * buf){
	inode_entry * ia = (inode_entry *)buf;
	ia[0].index = sb->root_index;
	ia[0].fsize = sb->dir_size * 2;
	ia[0].block[0] = sb->block_start - 1;
}

void fsys_init(){
	printk("fsys_init start\n");
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
			if(!sb.magic_num){
				//如果没有文件系统，则创建相应的文件系统
				super_block_init(&sb,p);
				write_hd(hd,&sb,p->start_lba + SUPER_BLOCK_LBA,1);
				//构建空闲块位图
				//首先找出要分配的内存的最大值，一次性分配缓存
				buf_size = GREATER(sb.block_bm_sects * SECTOR_SIZE,\
					GREATER(sb.inode_bm_sects * SECTOR_SIZE,\
						sb.inode_array_sects * SECTOR_SIZE));
				buf = sys_malloc(buf_size);
				block_bm_init(&sb,buf);
				write_hd(hd,buf,sb.block_bm_addr,sb.block_bm_sects);
				
				//构建inode数组以及位图
				memset_8(buf,buf_size,0);
				//inode的位图本身除了根目录以外其他都是0
				buf[0] = 0x80;	
				//4096个inode，位图正好1扇区
				write_hd(hd,buf,sb.inode_bm_addr,sb.inode_bm_sects);
				buf[0] = 0x0;
				inode_init(&sb,buf);
				write_hd(hd,buf,sb.inode_array_addr,sb.inode_array_sects);
				
				//构建根目录
				memset_8(buf,sizeof(inode_entry),0);
				d = (dir_entry *) buf;
				//根目录的当前目录和上级目录都是本身
				memcopy(d[0].fname,".",2);
				d[0].inode_index = sb.root_index;
				d[0].ft = FT_DIRECTORY;
				memcopy(d[1].fname,"..",3);
				d[1].inode_index = sb.root_index;
				d[1].ft = FT_DIRECTORY;
				write_hd(hd,buf,sb.block_start - 1,1);
				
			}
			//这里可以根据魔数判断文件系统类型
			//但现阶段不做这个工作
		}
	}
	
	inode_cnt = 0;
	init_mutex(&flloc_lock);
	
	//由于初始化顺序问题，main进程的文件相关参数在这里初始化
	proc * p = get_running();
#ifdef __DEBUG__
	ASSERT(!strcmp(p->name,"main"));
#endif
	memset_32(p->fd,MAX_OPEN_FILE_PER_PROC,-1);
	p->file_cnt = 0;
	p->file_lock = sys_malloc(sizeof(mutex));
	init_mutex(p->file_lock);	
}

static bool push_inode(inode * i){
	if(inode_cnt >= MAX_OPEN_INODE_CNT){
		printk("Total of opened files had reach the cat\n");
		return false;
	}
	lock(&flloc_lock);
	lst_push(&inode_list,&i->tag);
	++inode_cnt;
	unlock(&flloc_lock);
	return true;
}

static void pop_inode(inode * i){
	if(inode_cnt <= 0){
		printk("There is no file has been opened\n");
		return;
	}
	lock(&flloc_lock);
	lst_remove(&inode_list,&i->tag);
	--inode_cnt;
	unlock(&flloc_lock);
}

void load_root(partition * p){
	cur_part = p;
	p->root = &root_dir;
	//读入root的inode
	char * buf = sys_malloc(SECTOR_SIZE * 2);
	root_dir.path = sys_malloc(4);
	root_dir.path = "/";
	inode_entry * root_entry = read_inode(p->sb->root_index,buf);
	p->root->iptr = sys_malloc(sizeof(inode));
	//由于第一次初始化文件，默认此时是没有读文件操作的
	//如果有了要考虑文件系统的稳定性问题了
	init_inode(p->root->iptr,0,root_entry);
	push_inode(root_dir.iptr);

	p->root->pos = 0;
	init_list(&p->root->iptr->buf_list);
	init_list(&p->root->sonlist);
	//默认在入目录时全部读入内容
	uint_32 bcnt = DIV_ROUND_UP(root_dir.iptr->entry->fsize,BLOCK_SIZE);
	fbuf * fbufs = sys_malloc(bcnt * sizeof(fbuf));
	int i;
	for(i = 0;i < bcnt;++i){
		fbufs->empty = false;
		fbufs->dirty = false;
		fbufs->start_pos = i * BLOCK_SIZE;
		read_block(root_dir.iptr->entry,fbufs->start_pos,fbufs->data);
		lst_insert_elem(&root_dir.iptr->buf_list,&fbufs->tag,fpos_cmp,fbufs->start_pos);
		fbufs += 1;
	}

	root_dir.iptr->is_writing = false;

	sys_free(buf);
}

static bool reload_dir_buf(list_node * tag,uint_32 arg){
	fbuf * fb = struct_get(fbuf,tag,tag);
	read_block(arg,fb->start_pos,fb->data);
	return false;			
}

void * write_set(inode * i){
	conditional_block(i->read_cv);
	i->is_writing = true;
	return NULL;
}

void * read_set(inode * i){
	conditional_block(i->write_cv);
	++i->is_reading;
	return NULL;
}

void reload_root(){
	mutex * wlock = root_dir.iptr->write_lock;

	lock(wlock);
	actomic_action(write_set,root_dir.iptr);
	//读入root的inode
	reopen_inode(root_dir.iptr,cur_part->sb->root_index);	

	kdir* d = &root_dir;
	uint_32 pos = 0,dir_size = d->iptr->entry->fsize;
	list_node * n;
	fbuf *fb;
	uint_32 endpos = DIV_ROUND_UP(dir_size,BLOCK_SIZE) * BLOCK_SIZE;

	//首先把多余的fbuf释放掉
	while(true){
		n = lst_find_elem(&d->iptr->buf_list,fpos_cmp,endpos);
		if(!n) break;
		else{
			fb = struct_get(fbuf,tag,n);
			sys_free(fb);
			lst_remove(&d->iptr->buf_list,n);
		}
	}
	//如果不够创建新的buf
	fbuf * tail = struct_get(fbuf,tag,d->iptr->buf_list.tail);
#ifdef __DEBUG__
	ASSERT(d->iptr->buf_list.tail);
#endif
	while(tail->start_pos + BLOCK_SIZE <= dir_size){
		fb = sys_malloc(sizeof(fbuf));
		fb->empty = false;
		fb->dirty = false;
		fb->start_pos = tail->start_pos + BLOCK_SIZE;
		lst_insert_elem(&d->iptr->buf_list,&fb->tag,fpos_cmp,fb->start_pos);
#ifdef __DEBUG__
		ASSERT(d->iptr->buf_list.tail == &fb->tag);
#endif
		tail = struct_get(fbuf,tag,d->iptr->buf_list.tail);
	}
	//重新加载所有的fbuf
	lst_traverse(&d->iptr->buf_list,reload_dir_buf,d->iptr->entry);

	d->iptr->is_writing = false;
	unlock(wlock);
	conditional_notify(d->iptr->write_cv);
}

bool mount (list_node * tag,uint_32 arg){
	partition * p = struct_get(partition,tag,tag);
	char * name = (char *) arg;
	if(strcmp(p->name,name)) return false;
	//读入超级块
	super_block * buf = sys_malloc(SECTOR_SIZE);
	ASSERT(buf != NULL);
	read_hd(p->mydisk,buf,p->start_lba + 1,1);
	p->sb = buf;
	
	//读入空闲块位图
	buf = sys_malloc(p->sb->block_bm_sects * SECTOR_SIZE);
	ASSERT(buf != NULL);
	uint_32  bm_start = p->sb->block_bm_addr;
	read_hd(p->mydisk,buf,bm_start,p->sb->block_bm_sects);
	p->block_bm = sys_malloc(sizeof(bitmap));
	ASSERT(p->block_bm != NULL);
	p->block_bm->map = buf;
	p->block_bm->size = p->sb->block_bm_sects * 8 * SECTOR_SIZE;

	//读入inode位图
	buf = sys_malloc(p->sb->inode_bm_sects * SECTOR_SIZE);	
	ASSERT(buf!=NULL);
	bm_start = p->sb->inode_bm_addr;
	read_hd(p->mydisk,buf,bm_start,p->sb->inode_bm_sects);
	p->inode_bm = sys_malloc(sizeof(bitmap));
	ASSERT(p->inode_bm != NULL);
	p->inode_bm->map = buf;
	p->inode_bm->size = p->sb->inode_bm_sects * 8 * SECTOR_SIZE;
	
	init_list(&inode_list);
	//读入根目录
	load_root(p);
	//print_dir(&root_dir);
	//printk("sb_block:%d\n",p->sb->block_start);
	//print_dir(&root_dir);
	return true;
}


/**********************inode和block操作******************/
//inode链表寻找inode所用的比较器
bool find_inode(list_node * tag,uint_32 i_no){
	inode *in = struct_get(inode,tag,tag);
	if(in->entry->index == i_no)
		return true;
	else return false;
}

static void ipushp(inode * i,proc *p){
	lock(i->write_lock);
	lwm_push(&i->proc_list,p);
	++i->open_cnt;
	unlock(i->write_lock);
}

static void irmp(inode *i,proc * p){
	lock(i->write_lock);
	lwm_remove(&i->proc_list,p);
	--i->open_cnt;
	unlock(i->write_lock);
}

//传入此参数代表把整个位图都写一次
#define BM_WALL	-1	
void bitmap_sycn(uint_32 bit_index,bitmap_type bmt){
	uint_32 sec_index;
	char * buf_addr;
	switch(bmt){
		case BM_INODE:{
			sec_index = bit_index / SECTOR_BIT;
			if(bit_index == BM_WALL){
				uint_32 sec_cnt = DIV_ROUND_UP(cur_part->inode_bm->size,SECTOR_BIT);
				buf_addr = cur_part->inode_bm->map;
				write_hd(cur_part->mydisk,buf_addr,cur_part->sb->inode_bm_addr,sec_cnt);
				break;
			}
			ASSERT(sec_index < cur_part->sb->inode_bm_sects);
			buf_addr = (char *)cur_part->inode_bm->map + sec_index * SECTOR_SIZE;
			write_hd(cur_part->mydisk,buf_addr,cur_part->sb->inode_bm_addr + sec_index,1);
			break;
		}
		case BM_BLOCK:{
			//注意对于块来说，传入的是块地址，与位图的位下标有偏移
			if(bit_index == BM_WALL){
				uint_32 sec_cnt = DIV_ROUND_UP(cur_part->block_bm->size,BLOCK_BIT);
				buf_addr = cur_part->block_bm->map;
				write_hd(cur_part->mydisk,buf_addr,cur_part->sb->block_bm_addr,sec_cnt);
				break;
			}
			bit_index -= cur_part->sb->block_start;
			sec_index = bit_index / SECTOR_BIT;
			ASSERT(sec_index < cur_part->sb->block_bm_sects);
			buf_addr = (char *)cur_part->block_bm->map + sec_index * SECTOR_SIZE;
			write_hd(cur_part->mydisk,buf_addr,cur_part->sb->block_bm_addr + sec_index,1);
			break;
		}	
		default: break;
	}
}

inode_entry * read_inode(uint_32 index,char * buf){
	uint_32 byte_st = index * sizeof(inode_entry);
	uint_32 sect_addr = byte_st / SECTOR_SIZE;

	//如果横跨两个扇区
	if(SECTOR_SIZE - (byte_st % SECTOR_SIZE) < sizeof(inode_entry)){
		read_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,2);
	}
	else{
		read_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,1);
	}
	byte_st %= SECTOR_SIZE;
	return buf + byte_st;
}

inode_entry * write_inode(uint_32 i_no,inode_entry * ie,char *buf){
	uint_32 byte_st = i_no * sizeof(inode_entry);
	uint_32 sect_addr = byte_st / SECTOR_SIZE;	
	inode_entry * buf_dirty = buf + (byte_st % SECTOR_SIZE);
	//由于写只能以扇区为单位，所以先读后写
	//如果横跨两个扇区
	if(SECTOR_SIZE - (byte_st % SECTOR_SIZE) < sizeof(inode_entry)){
		read_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,2);
		*buf_dirty = *ie;
		write_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,2);
	}
	else{
		read_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,1);
		*buf_dirty = *ie;
		write_hd(cur_part->mydisk,buf,cur_part->sb->inode_array_addr + sect_addr,1);
	}
	return buf_dirty;
}

char* read_block(inode_entry * in,uint_32 fpos,char * buf){
	//12个直接块，1个间接块，一共140个块地址
	uint_32 sect_st = fpos / SECTOR_SIZE;
	uint_32 sect_addr;	
	if(sect_st < 12){
		read_hd(cur_part->mydisk,buf,in->block[sect_st],1);
		fpos = buf + (fpos - sect_st * SECTOR_SIZE);
	}
	else{
		//先在buf中读入inode的间接块
		read_hd(cur_part->mydisk,buf,in->block[12],1);
		sect_addr  = sect_st - 12;
		sect_addr = *((uint_32*)buf + sect_addr);
		read_hd(cur_part->mydisk,buf,sect_st,1);
		fpos = buf + (fpos - sect_st * SECTOR_SIZE);		
	}
	return fpos;
}

char* write_block(inode_entry *in,uint_32 fpos,char *buf){
	//12个直接块，1个间接块，一共140个块地址
	uint_32 sect_st = fpos / SECTOR_SIZE;
	uint_32 sect_addr;	
	if(sect_st < 12){
		write_hd(cur_part->mydisk,buf,in->block[sect_st],1);
		fpos = buf + (fpos - sect_st * SECTOR_SIZE);
	}
	else{
		//先在buf中读入inode的间接块
		read_hd(cur_part->mydisk,buf,in->block[12],1);
		sect_addr  = sect_st - 12;
		sect_addr = *((uint_32*)buf + sect_addr);
		write_hd(cur_part->mydisk,buf,sect_st,1);
		fpos = buf + (fpos - sect_st * SECTOR_SIZE);		
	}
	return fpos;
}

//如果inode已经存在，打开数+1，返回inode
//否则读入inode
//此函数提供inode内存，主调函数并不关心该内存释放
//注意对所有inode内容映像的修改中，虽然会上锁
//但是并不会唤醒读线程，因为很多时候修改完inode紧接着就是修改文件缓存，
//如果在修改完inode就唤醒读线程，会造成inode映像和文件缓存内容的不一致性
//所以把唤醒读线程的权力留给了主调函数，但是这同时也意味着如果主调函数不清楚这一点
//读线程可能永远阻塞
//在进入此函数之前，is_writing应该被设置为true，离开后做完所以文件改动，才被设置为false
inode * open_inode(uint_32 index){
	inode * i = lst_find_elem(&inode_list,find_inode,index);
	if(i){	
		lock(i->write_lock);
		++i->open_cnt;
		lwm_push(&i->proc_list,get_running()->proc);
		unlock(i->write_lock);
		return i;
	}
	i = sys_malloc(sizeof(inode));
	char * buf = sys_malloc(SECTOR_SIZE * 2);
	inode_entry * entry = read_inode(index,buf);
	i->write_lock = sys_malloc(sizeof(mutex));
	init_mutex(i->write_lock);
	lock(i->write_lock);
	init_inode(i,0,entry);
	push_inode(i);
	unlock(i->write_lock);

	sys_free(buf);
	return	i;
}

void reopen_inode(inode * i,uint_32 index){
	char * buf = sys_malloc(SECTOR_SIZE * 2);
	lock(i->write_lock);

	inode_entry * entry = read_inode(index,buf);
	i->dirty = false;
	memcopy(i->entry,entry,sizeof(inode_entry));	

	unlock(i->write_lock);
	sys_free(buf);
}

//判断当前文件的inode是否可写的函数
//传入参数是inode指针
static bool can_be_read(inode * iptr){
	return iptr->is_writing;
}

static bool can_be_written(inode * iptr){
#ifdef __DEBUG__
	ASSERT(iptr->is_reading >= 0);
#endif
	return iptr->is_reading;
}

//本函数提供inode结构中entry，write_cv的内存分配，需要注意在关闭文件时释放
void init_inode(inode * i,uint_32 open_cnt,inode_entry * entry){
	i->open_cnt = open_cnt;
	
	i->write_lock = sys_malloc(sizeof(mutex));
	init_mutex(i->write_lock);
	i->dirty = false;
	
	i->is_writing = false;
	i->is_reading = 0;
	i->write_cv  = sys_malloc(sizeof(condition_var));
	init_condition_var(i->write_cv,can_be_read,i);
	i->read_cv = sys_malloc(sizeof(condition_var));
	init_condition_var(i->read_cv,can_be_written,i);
	i->read_lock = sys_malloc(sizeof(mutex));
	init_mutex(i->read_lock);

	i->entry = sys_malloc(sizeof(inode_entry));
	memcopy(i->entry,entry,sizeof(inode_entry));
	init_list(&i->proc_list);
	ipushp(i,get_running()->proc);
	init_list(&i->buf_list);
}

void close_inode(inode * in){
	if(in->dirty){
		char * buf = sys_malloc(SECTOR_SIZE*2);
		write_inode(in->entry->index,in->entry,buf);
		sys_free(buf);
	}

	if(in->open_cnt <= 0){
		pop_inode(in);
		sys_free(in->entry);
		sys_free(in->read_cv);
		sys_free(in->write_cv);
		sys_free(in->write_lock);
		lwm_free(&in->proc_list);
		sys_free(in);
	}
	else{
		irmp(in,get_running()->proc);
	}
	return;	
}

int inode_alloc(){
	return bit_alloc(cur_part->inode_bm,1);
}

void inode_free(uint_32 index){
	bit_reset(cur_part->inode_bm,index);
}

int block_alloc(){
	int b =  bit_alloc(cur_part->block_bm,1);
	if(b == -1) return b;
	else return cur_part->sb->block_start + b;
}

void block_free(uint_32 index){
	bit_reset(cur_part->block_bm,index - cur_part->sb->block_start);
}

//此函数并没有操作内存中的inode映像，而是直接操作磁盘
//所以不需要锁和条件变量的控制，但是要注意如果在进行过此函数之后
//不进行reload就会导致内存和磁盘的不一致
bool add_inode(uint_32 i_no,uint_32 * blocks,uint_32 fsize){
	if(i_no >= FS_MAX_INODE_CNT){
		printk("file system cann't create more files\n");
		return false;
	}
	inode_entry * ie = sys_malloc(sizeof(inode_entry));
	ie->index = i_no;
	ie->fsize = fsize;
	//DIV_ROUND_UP的实现中要注意0-1就是全f，会造成错误
	uint_32 bcnt = DIV_ROUND_UP(fsize,SECTOR_SIZE);	
	if(!fsize) bcnt = 0;
	
	uint_32 i = 0;
	for(;i < bcnt && i < INODE_PRIMARY_INDEX_CNT;++i){
		ie->block[i] = blocks[i] + cur_part->sb->block_start;
	}
	if(bcnt > INODE_PRIMARY_INDEX_CNT){
		int blk = block_alloc();
		uint_32 * buf = sys_malloc(BLOCK_SIZE);
		memcopy(buf,blocks + INODE_PRIMARY_INDEX_CNT,4 * (bcnt - INODE_PRIMARY_INDEX_CNT));
		write_hd(cur_part->mydisk,buf,blk,1);
		ie->block[INODE_PRIMARY_INDEX_CNT] = blk;
	}
	
	char * buf = sys_malloc(2* SECTOR_SIZE);
	write_inode(ie->index,ie,buf);
	sys_free(buf);
	sys_free(ie);
	return true;
}

/***********************目录操作*************************/

//把path中的路径前进一级，并且把已经前进的目录名加入search_path
static char * parse_path(char * path,char * search_path){
	while(*path == '/') ++path;
	
	while(*path != '/' && *path != '\0') {
		*search_path++ =  *path++;
	}
	if(*path == '/'){
		*search_path++ = *path++;
	}
	return path;
}

//返回倒数第二级目录，即当前文件/目录的父目录
//如果是绝对路径，则一定存在父目录，根目录的父目录是本身
//如果是相对路径，不存在父目录时返回NULL
static char * get_parent_path(char * path,char * p){
	char * backit = path + strlen(path) - 2,* headend = path;
	if(*backit == '/') --backit;
	while(backit >= headend){
		if(*backit == '/') break;
		else --backit;
	}
	
	if(*backit == '/') {
		memcopy(p,path,backit - path+1);
		p[backit - path +1] = '\0';
		return p;
	}
	else return NULL;		
}

//原本的fname在找到后会变为返回参数指针
static bool fname_cmp(list_node * tag,uint_32 arg){
	char * fname = arg;
	fbuf * fb = struct_get(fbuf,tag,tag);
	dir_entry * di = fb->data;
	while(true){
		if(!strcmp(fname,di->fname)){
			memcopy(fname,&di,4);
			uint_32 * pos = fname + 4;
			*pos = fb->start_pos + ((uint_32)di - (uint_32)fb->data);
			return true;
		}
		else if(!strcmp("",di->fname))
			return false;
		++di;
	}
}

static dir_entry * find_in_dir(char * fname,kdir* d,uint_32 * pos){
	//name_or_ret在传入遍历函数作为fname传入
	//但是同时也包含返回值，返回时包含两个32位变量
	//第一个是目录项的指针，第二个是目录项在目录中偏移
	uint_32 * name_or_ret = sys_malloc(GREATER(8,strlen(fname)));
	memcopy(name_or_ret,fname,strlen(fname));
	if(fname[strlen(fname) - 2] == '/') {
		char * name = name_or_ret;
		name[strlen(fname) - 2] = '\0';
	}
	void * n = lst_traverse(&d->iptr->buf_list,fname_cmp,name_or_ret);
	if(fname[strlen(fname) - 2] == '\0') {
		char * name = name_or_ret;
		name[strlen(fname) - 2] = '/';
	}
	if(!n) return NULL;
	else {
		*pos = name_or_ret[1];
		return name_or_ret[0];
	}
}

//注意load_dir的用法
//1.目录本身的内存由主调函数提供，但是目录inode内存由本函数提供
//关闭目录需要注意关闭inode的内存
//2.buf可被释放，里面的内容已被复制到dir的inode_ptr中
//3.de是在父目录找到的本目录目录项
//4.由于兼容问题，本函数不会负责dir中path和father的初始化
//在使用本函数时需注意
static kdir* load_dir(dir_entry *de,kdir* d,char * buf){
	//读入并初始化目录的inode
	d->iptr = open_inode(de->inode_index);
	d->pos = 0;
	init_list(&d->iptr->buf_list);
	init_list(&d->sonlist);

	//默认在入目录时全部读入内容
	uint_32 bcnt = DIV_ROUND_UP(d->iptr->entry->fsize,BLOCK_SIZE);
	fbuf * fbufs = sys_malloc(bcnt * sizeof(fbuf));
	int i;
	for(i = 0;i < bcnt;++i){
		fbufs->empty = false;
		fbufs->dirty = false;
		fbufs->start_pos = i * BLOCK_SIZE;
		read_block(d->iptr->entry,fbufs->start_pos,fbufs->data);
		lst_insert_elem(&d->iptr->buf_list,&fbufs->tag,fpos_cmp,fbufs->start_pos);
		fbufs += 1;
	}
	d->iptr->is_writing = false;
	conditional_notify(d->iptr->write_cv);
	return d;
}

//注意和read_dir不同，这里没有再次申请inode和fbuf的空间
static kdir* reload_dir(dir_entry *de,kdir* d,char *buf){
	if(d->iptr->dirty){
		printk("the file has already changed,are you sure to reload?\n \
			(You will lost the change if you don't save it before reload)\n ");
	}
	
	lock(d->iptr->write_lock);
	actomic_action(d->iptr->write_cv,d->iptr);
	reopen_inode(d->iptr,de->inode_index);
	
	uint_32 pos = 0;
	uint_32 dir_size = d->iptr->entry->fsize;
	list_node * n;
	fbuf *fb;
	uint_32 endpos = DIV_ROUND_UP(dir_size,BLOCK_SIZE) * BLOCK_SIZE;

	//首先把多余的fbuf释放掉
	while(true){
		n = lst_find_elem(&d->iptr->buf_list,fpos_cmp,endpos);
		if(!n) break;
		else{
			fb = struct_get(fbuf,tag,n);
			sys_free(fb);
			lst_remove(&d->iptr->buf_list,n);
		}
	}
	//如果不够创建新的buf
	fbuf * tail = struct_get(fbuf,tag,d->iptr->buf_list.tail);
#ifdef __DEBUG__
	ASSERT(d->iptr->buf_list.tail);
#endif
	while(tail->start_pos + BLOCK_SIZE <= dir_size){
		fb = sys_malloc(sizeof(fbuf));
		fb->empty = false;
		fb->dirty = false;
		fb->start_pos = tail->start_pos + BLOCK_SIZE;
		lst_insert_elem(&d->iptr->buf_list,&fb->tag,fpos_cmp,fb->start_pos);
#ifdef __DEBUG__
		ASSERT(d->iptr->buf_list.tail == &fb->tag);
#endif
		tail = struct_get(fbuf,tag,d->iptr->buf_list.tail);
	}
	//重新加载所有的fbuf
	lst_traverse(&d->iptr->buf_list,reload_dir_buf,d->iptr->entry);

	d->iptr->is_writing = false;
	unlock(d->iptr->write_lock);
	conditional_notify(d->iptr->write_cv);
	return d;
}

static int file_depth(char * path){
	char * it = path;
	int depth = 1;
	if(*it == '/') ++it;
	while(*it){
		if(*it != '/') ++it;
		++depth;
		++it;
	}
	return depth;
}

static dname_cmp(list_node * tag,char * path){
	kdir* d = struct_get(kdir,tag,tag);
	if(!strcmp(d->path,path))
		return true;
	else return false;
}

//返回离被查找目录最近的一级目录
static kdir* search_in_buf(char * path){
	char * curf = sys_malloc(MAX_DIR_SEARCH_LENGTH);
	memset_8(curf,MAX_DIR_SEARCH_LENGTH,0);
	kdir* d = &root_dir;
	list_node * n;
	while(true){
		n = lst_find_elem(&d->sonlist,dname_cmp,path);
		if(!n)	return d;
		else d = struct_get(kdir,tag,n);
	}	
}

//查找成功时，target就是返回值
//否则返回的NULL，taregt参数指向查找失败的目录项
#define ROOT_ENTRY 0xff501910
dir_entry* search_file(char * path,kdir* parent,search_log * s_log,dir_entry * target){
	s_log->depth = 1;
	//根目录直接返回
	if(!strcmp(path,"/") || !strcmp(path,"/.")
		|| !strcmp(path,"/..")){
		s_log->search_path[0] = '\0';
		s_log->ft = FT_DIRECTORY;
		return ROOT_ENTRY;
	}	
#ifdef __DEBUG__
	ASSERT(strlen(path) <= MAX_DIR_SEARCH_LENGTH);
	ASSERT(path[0] == '/');
#endif
	memset_8(s_log->search_path,MAX_DIR_SEARCH_LENGTH,0);
	kdir * dir_buf = sys_malloc(sizeof(kdir));
	dir_entry *de;
	//sp指向search_path中最后一部分，即当前搜索项
	char * sp = s_log->search_path;
	char * buf = sys_malloc(2*SECTOR_SIZE);
	//先在目录缓存中寻找该文件的父目录
	char * ppbuf = sys_malloc(strlen(path));
	char * pp = get_parent_path(path,pp);
	//printk("path:%s\n",path);
#ifdef __DBEUG__
	ASSERT(pp);
#endif 	
	parent = search_in_buf(pp);
	int pplen = strlen(parent->path);
	memcopy(sp,parent->path,pplen);
	sp += pplen;
	--sp;
	path += pplen;
	--path;
	while(true){
		//printk("sp:%s\n",sp);
		sp += strlen(sp);
		--sp;
		++s_log->depth;
		
		path = parse_path(path,sp);
		//printk("sp:%s,path:%s\n",sp,path);
		//printk("father path:%s\n",parent->path);
		uint_32 pos;
		de = find_in_dir(sp,parent,&pos);
		//printk("fname : %s\n",sp);
		if(!de){
			printk("file %s not find in directory:%s\n",sp,s_log->search_path);
			s_log->ft = FT_UNKNOW;
			return NULL;
		}
		switch(de->ft){
			case FT_DIRECTORY:{
				s_log->ft = FT_DIRECTORY;
				if(*path){	
					load_dir(de,dir_buf,buf);
#ifdef __DEBUG__
					ASSERT(!lst_find_elem(&parent->sonlist,dname_cmp,dir_buf->path));
#endif					
					lst_push(&parent->sonlist,&dir_buf->tag);
					dir_buf->father = parent;
					dir_buf->path = sys_malloc(strlen(s_log->search_path));
					memcopy(dir_buf->path,s_log->search_path,strlen(s_log->search_path));
					//printk("%s\n",dir_buf->path);
					s_log->parent = parent;
					parent = dir_buf;
					dir_buf = sys_malloc(sizeof(dir));
					memcopy(target,de,sizeof(dir_entry));
				}
				else	goto end;
				break;
			}
			case FT_REGULAR:{
				s_log->ft = FT_REGULAR;
				if(!*path)	goto end;
				else	return NULL;
				break;
			}
			default:break;
		}
	}
	
end:
	memcopy(target,de,sizeof(dir_entry));
	sys_free(buf);
	sys_free(ppbuf);
	return target;
}

bool open_dir(char* path,dir* d){
	uint_32 pathlen = strlen(path);
	if(path[pathlen-2] != '/'){
		printk("%s is not a directory\n",path);
		return false;
	}	

	proc * p = get_running()->proc;
	d->path = sys_malloc(pathlen);
	memcopy(d->path,path,pathlen);
	d->pos = 0;
	//如果在缓存中找到，直接返回
	kdir * dp = search_in_buf(path);
	if(!strcmp(dp->path,path)){
		d->iptr = dp->iptr;
		ipushp(d->iptr,p);
		return true;
	}
	//d是用户进程的内存，kd是内核中的数据
	kdir * kd = sys_malloc(sizeof(kdir));
	search_log *s_log = sys_malloc(sizeof(search_log));
	dir_entry * de = sys_malloc(sizeof(dir_entry));
	dir_entry * target = search_file(path,dp,s_log,de);
	if(target == ROOT_ENTRY){
		d->iptr = kd->iptr;
		ipushp(d->iptr,p);
		sys_free(de);
		sys_free(s_log);
		return true;
	}
	else if(!target){
		sys_free(d->path);
		sys_free(de);
		sys_free(s_log);
		return false;
	}
	else {
#ifdef __DEBUG__
		ASSERT(de == target);
#endif
		//载入内核目录
		char * buf = sys_malloc(BLOCK_SIZE);
		load_dir(de,kd,buf);
		kd->path = sys_malloc(pathlen);
		memcopy(kd->path,path,pathlen);
		kd->father = s_log->parent;
		lst_push(&dp->sonlist,&kd->tag);
		//复制到用户的目录
		d->iptr = kd->iptr;

		sys_free(buf);
		sys_free(de);
		sys_free(s_log);
		return true;
	}	
}

bool reopen_dir(char *path,dir* d){
	kdir * kd = search_in_buf(path);
	int pathlen = strlen(path);
#ifdef __DEBUG__
	ASSERT(!strcmp(path,kd->path));
#endif
	search_log * s_log = sys_malloc(sizeof(search_log));
	dir_entry * de = sys_malloc(sizeof(dir_entry));
	dir_entry * target = search_file(path,&root_dir,s_log,de);
	if(target == ROOT_ENTRY){
		reload_root(cur_part);
		sys_free(s_log);
		sys_free(de);
		return true;
	}
	else if(!target){
		sys_free(s_log);
		sys_free(de);
		return false;
	}
	else {
#ifdef __DEBUG__
		ASSERT(de == target);
#endif
		char * buf = sys_malloc(BLOCK_SIZE);
		reload_dir(de,kd,buf);
		sys_free(d->path);		
		d->path = sys_malloc(pathlen);
		memcopy(d->path,path,pathlen);
		d->iptr = kd->iptr;		

		sys_free(s_log);
		sys_free(buf);	
		sys_free(de);
		return true;
	}
}

//目录和文件不同，没有使用回写，而是write through，
//所以在关闭时很简单
void close_dir(dir* d){
	kdir * kd = search_in_buf(d->path);
	proc * p = get_running()->proc;
#ifdef __DEBUG__
	ASSERT(!strcmp(d->path,kd->path));
#endif
	if(&root_dir == kd || kd->iptr->open_cnt > 1){
		irmp(d->iptr,p);
	}
	else{
#ifdef __DEBUG__
		ASSERT(kd->iptr->open_cnt == 1)
		ASSERT(lst_empty(&kd->sonlist));
#endif
		irmp(d->iptr,p);
		lst_remove(&kd->father->sonlist,&kd->tag);
		lst_free_elem(&kd->iptr->buf_list,fbuf_free);
		close_inode(kd->iptr);
		sys_free(kd->path);
		sys_free(kd);	
	}
	sys_free(d->path);
	sys_free(d);
	return;
}

bool add_entry(kdir* parent,char * fname,uint_32 i_no,ftype ft){
	uint_32 dir_size = parent->iptr->entry->fsize;
	uint_32 sect_offset = dir_size / SECTOR_SIZE;
	char * buf = sys_malloc(2*SECTOR_SIZE);
	dir_entry * de;
	//把父目录所有的直接块地址复制出来
	uint_32 blocks[MAX_FILE_BCNT],i = 0;
	for(;i < 13;++i){
		blocks[i] = parent->iptr->entry->block[i];
	}	
	//当前块剩余空间不足一个目录项，写入下一个块
	if( (SECTOR_SIZE - (dir_size % SECTOR_SIZE)) < sizeof(dir_entry) )
		++sect_offset;
	if(sect_offset < INODE_PRIMARY_INDEX_CNT){
		read_hd(cur_part->mydisk,buf,blocks[sect_offset],1);
		de = buf + (dir_size % SECTOR_SIZE);
		memcopy(de->fname,fname,strlen(fname));
		de->inode_index = i_no;
		de->ft = ft;
		write_hd(cur_part->mydisk,buf,blocks[sect_offset],1);
		parent->iptr->entry->fsize += sizeof(dir_entry);
		//将更新同步到父目录inode中
		write_inode(parent->iptr->entry->index,parent->iptr->entry,buf);
		sys_free(buf);
		return true;
	}
	else if(sect_offset > MAX_FILE_BCNT){
		printk("directory has not enough space for %s\n",fname);
		sys_free(buf);
		return false;
	}
	else{
		//首先读入二级索引
		read_hd(cur_part->mydisk,blocks + 12,blocks[12],1);
		//重复之前的操作
		read_hd(cur_part->mydisk,buf,blocks[sect_offset],1);
		de = buf + (dir_size % SECTOR_SIZE);
		memcopy(de->fname,fname,strlen(fname));
		de->inode_index = i_no;
		de->ft = ft;
		write_hd(cur_part->mydisk,buf,blocks[sect_offset],1);
		parent->iptr->entry->fsize += sizeof(dir_entry);
		write_inode(parent->iptr->entry->index,parent->iptr->entry,buf);
		sys_free(buf);
		return true;
	}	
	
}

bool delete_entry(kdir* parent,char * fname){
	uint_32 pos;
	uint_32 dir_size = parent->iptr->entry->fsize;
	dir_entry * de = find_in_dir(fname,parent,&pos);
	if(!de){
		printk("%s cannot find\n",fname);
		return false;
	}

	lock(parent->iptr->write_lock);
#ifdef __DBEUG__
	ASSERT(!parent->is_writing);
#endif
	actomic_action(write_set,parent->iptr);
	//把后面的目录项向前移动	
	memcopy(de,(char *)de + sizeof(dir_entry),BLOCK_SIZE - (pos % BLOCK_SIZE) - sizeof(dir_entry) );
	uint_32 lastde = (BLOCK_SIZE / sizeof(dir_entry) - 1) * sizeof(dir_entry);
	list_node * n;
	fbuf * pre,* fb;
	n = lst_find_elem(&parent->iptr->buf_list,fpos_cmp,pos);
	pre = struct_get(fbuf,tag,n);
	pre->dirty = true;
	for(pos = DIV_ROUND_UP(pos,BLOCK_SIZE) * BLOCK_SIZE;pos <= dir_size;pos += BLOCK_SIZE){
		n = lst_find_elem(&parent->iptr->buf_list,fpos_cmp,pos);
		fb = struct_get(fbuf,tag,n);
		memcopy(pre->data + lastde,fb->data,sizeof(dir_entry));
		memcopy(fb->data,fb->data + sizeof(dir_entry),lastde);
		pre->dirty = true;
		fb->dirty = true;
		fb = pre;
	}
	//同步所有缓存
	lst_traverse(&parent->iptr->buf_list,fbuf_sycn,parent->iptr->entry);

	//修改父目录inode
	parent->iptr->dirty = true;
	parent->iptr->entry->fsize -= sizeof(dir_entry);
	char *buf = sys_malloc(SECTOR_SIZE * 2);
	write_inode(parent->iptr->entry->index,parent->iptr->entry,buf);
	sys_free(buf);
	parent->iptr->is_writing = false;
	unlock(parent->iptr->write_lock);
	conditional_notify(parent->iptr->read_cv);
	return true;	
}

bool delete_dir(char * path,dir_rmarg rmarg){
	if(path[strlen(path)-1] != '/'){
		printk("%s isn't directory\n",path);
		return false;
	}
	
	char * pp = sys_malloc(strlen(path));
	kdir* p = sys_malloc(sizeof(dir));
	if(!open_dir(pp,p)){
		printk("Open directory failed:%s\n",pp);
		return false;
	}
	if(p->iptr->open_cnt > 1){
		printk("There are other process using this dirtory\n");
		return false;
	}

	uint_32 pos;
	
	dir_entry * de = sys_malloc(sizeof(dir_entry));
	search_log * slog = sys_malloc(sizeof(search_log));
	dir_entry * target = search_file(path,&root_dir,slog,de);
	if(!target){
		printk("%s doesn't exsit\n",path);
		return false;
	}
	char * buf = sys_malloc(2 * BLOCK_SIZE);
	inode_entry * ie = read_inode(de->inode_index,buf);
	uint_32 * blocks = sys_malloc(4 * MAX_FILE_BCNT);
	memcopy(blocks,ie->block,4 * INODE_PRIMARY_INDEX_CNT);
	if(blocks[INODE_PRIMARY_INDEX_CNT]){
		read_hd(cur_part->mydisk,blocks + INODE_PRIMARY_INDEX_CNT,blocks[INODE_PRIMARY_INDEX_CNT],1);
	}
	
	//释放块
	int i;
	for(i = 0;i <= MAX_FILE_BCNT;++i){
		if(!blocks[i]) break;
		else block_free(blocks[i]);
	}
	bitmap_sycn(BM_WALL,BM_BLOCK);

	//块不需要再次全部写0，只要修改位图即可，但inode不行
	inode_free(ie->index);
	bitmap_sycn(ie->index,BM_INODE);
	memset_8(buf,sizeof(inode_entry),0);
	inode_entry * ie0 = buf;
	add_inode(ie->index,ie0->block,ie0->fsize);

	//删除目录项
	delete_entry(p,de->fname);
}

static bool fbuf_print_de(list_node *tag,uint_32 arg){
	fbuf *fb = struct_get(fbuf,tag,tag);
	dir_entry * de = fb->data;
	int cnt = BLOCK_SIZE/sizeof(dir_entry),i;
	for(i = 0;i < cnt;++i){
		if(!strcmp("",de->fname))
			return true;
		printk("name:%s,i_no:%d,ftype:",de->fname,de->inode_index);
		switch(de->ft){
			case FT_REGULAR:
				{printk("regular file");break;}
			case FT_DIRECTORY:
				{printk("directory");break;}
			case FT_UNKNOW:
				{printk("unknow type");break;}		
		}
		printk("\n");
		++de;
	}
	return false;
}

void finish_reading(inode * in){
	lock(in->read_lock);
#ifdef __DBEUG__
	ASSERT(in->is_reading >= 1);
#endif
	--in->is_reading;
	if(!in->is_reading)
		conditional_notify(in->read_cv);
	unlock(in->read_lock);
}

void print_dir(dir*d){
	actomic_action(read_set,d->iptr);
	lst_traverse(&d->iptr->buf_list,fbuf_print_de,NULL);
	finish_reading(d->iptr);
}

/*********************文件操作*************************/

bool create_file(dir* p,char * fname,ftype ft,uint_32 fsize){
	int failed_flag = 0;
	if(strlen(fname) > MAX_FNAME_LENGTH){
		printk("file name is longer than limit : %d characters\n",MAX_FNAME_LENGTH);
		failed_flag = 1;
		goto rollback;
	}
	uint_32 pos;
	if(find_in_dir(fname,p,&pos)){
		printk("file already exsit\n");
		return false;
	}

	//分配inode
	int i_no = inode_alloc();
	if(i_no == -1) {
		printk("allocate inode failed\n");
		failed_flag = 2;
		goto rollback;
	}
	bitmap_sycn(i_no,BM_INODE);

	//根据文件大小分配对应的块，最少为1块
	uint_32 bcnt = DIV_ROUND_UP(fsize,SECTOR_SIZE);
	if(bcnt > MAX_FILE_BCNT) {
		printk("file size is too big\n");
		failed_flag = 3;
		goto rollback;
	}
	uint_32 * blocks = sys_malloc(bcnt * 4);
	uint_32 i = 0;
	int b_no;
	for(;i < bcnt;++i){
		b_no = block_alloc();
		if(b_no != -1) 	{
			blocks[i] = b_no;
			bitmap_sycn(b_no,BM_BLOCK);
		}
		else{
			printk("disk has not enough space\n");
			failed_flag = 4;
			goto rollback;
		}
	}
	//向磁盘写入inode
	if(!add_inode(i_no,blocks,fsize)){
		failed_flag = 5;
		goto rollback;
	}
	//向父目录写入目录项
	if(!add_entry(p,fname,i_no,ft)){
		failed_flag = 6;
		goto rollback;
	}
	else{
		sys_free(blocks);
		return true;
	}
rollback:
	printk("failed_flag:%d\n",failed_flag);
	switch(failed_flag){
		case 6:{}
		case 5:{
			inode_entry * entry0 = sys_malloc(sizeof(inode_entry));
			memset_8(entry0,sizeof(inode_entry),0);
			char * buf = sys_malloc(SECTOR_SIZE*2);
			write_inode(i_no,entry0,buf);	
			sys_free(entry0);
			sys_free(buf);
		}
		case 4:{
			for(--i;i>=0;--i){
				block_free(blocks[i]);
			}
		}
		case 3:{}
		case 2:{
			inode_free(i_no);
		}
		case 1:{}
		default: break;
	}
	sys_free(blocks);
	return false;
}	

bool delete_file(dir* p,char * fname){
	uint_32 pos;
	dir_entry * de = find_in_dir(fname,p,&pos);
	if(!de){
		printk("%s doesn't exsit\n",fname);
		return false;
	}
	if(lst_find_elem(&inode_list,find_inode,de->inode_index)){
		printk("%s is using by other process\n",fname);
		return false;
	}
	char * buf = sys_malloc(2 * BLOCK_SIZE);
	inode_entry * ie = read_inode(de->inode_index,buf);
	uint_32 * blocks = sys_malloc(4 * MAX_FILE_BCNT);
	memcopy(blocks,ie->block,4 * INODE_PRIMARY_INDEX_CNT);
	if(blocks[INODE_PRIMARY_INDEX_CNT]){
		read_hd(cur_part->mydisk,blocks + INODE_PRIMARY_INDEX_CNT,blocks[INODE_PRIMARY_INDEX_CNT],1);
	}
	
	//释放块
	int i;
	for(i = 0;i <= MAX_FILE_BCNT;++i){
		if(!blocks[i]) break;
		else block_free(blocks[i]);
	}
	bitmap_sycn(BM_WALL,BM_BLOCK);

	//块不需要再次全部写0，只要修改文件即可，但inode不行
	inode_free(ie->index);
	bitmap_sycn(ie->index,BM_INODE);
	memset_8(buf,sizeof(inode_entry),0);
	inode_entry * ie0 = buf;
	add_inode(ie->index,ie0->block,ie0->fsize);

	//删除目录项
	delete_entry(p,fname);
}

//把目录项指向的inode载入并返回其指针
static inode* load_file(dir_entry * de,open_flag of){
	if(inode_cnt >= MAX_OPEN_INODE_CNT){
		printk("the number of file be opened has reach the limit\n");
		return -1;
	}
	inode * in = open_inode(de->inode_index);
	return in;
}


//此函数和seek不同，seek是操作单个进程的文件表
//此函数直接操作内核中所有文件的inode表
static void* read_file_to_block(inode * in,char * fname,uint_32 fpos){
	list_node * tag = lst_find_elem(&in->buf_list,fpos_cmp,fpos);
	fbuf * fb;
	lock(in->write_lock);
	actomic_action(write_set,in);
	if(!tag){
		fb = sys_malloc(sizeof(fbuf));
		fb->start_pos = fpos & BLOCK_SIZE; 
		fb->empty = false;
		fb->dirty = false;
		if(fpos > in->entry->fsize){
			printk("out of file size :file %s size %d fpos %d\n",fname,\
				in->entry->fsize,fpos);
		}
		read_block(in->entry,fpos,fb->data);
	}
	else	fb = struct_get(fbuf,tag,tag);
	in->is_writing = false;
	unlock(in->write_lock);
	conditional_notify(in->write_cv);
	return fb->data + (fpos & ~BLOCK_SIZE);
}

static inode * find_in_itable(dir_entry * target){
	list_node * tag = lst_find_elem(&inode_list,find_inode,target->inode_index);
	if(!tag) return tag;
	else return struct_get(inode,tag,tag);
}

int open_file(char * path,open_flag of){
	int fd = -1;
	inode * in;
	if(path[strlen(path)-1] == '/'){
		printk("directory cann't be opened\n");
		return fd;
	}
	
	proc * p = get_running()->proc;
	fd = has_file(p,path);
	if(fd != -1){
		printk("File %s has already been opened by process %s\n",path,p->name);
		return -1;
	}
	search_log * slog = sys_malloc(sizeof(search_log));
	dir_entry * de = sys_malloc(sizeof(dir_entry));
	dir_entry * target = search_file(path,&root_dir,slog,de);
	int depth = file_depth(path);
	if(!target){
#ifdef __DEBUG__
		ASSERT(depth >= slog->depth);
#endif
		if(depth > slog->depth) return fd;
		//如果是创造文件，那成功读取到文件所在目录时，
		//就要在该目录下没有便创造该文件
		if(of != O_CRT)	return fd;
		//从路径中取出文件名
		char * it = path + strlen(path) -1;
		while(*it != '/') --it;
		char * name = it+1;
		create_file(de,name,FT_REGULAR,DEFAULT_FILE_SIZE);
		target = search_file(path,&root_dir,slog,de);
		//剩下的操作和按写文件打开相同	
#ifdef __DEBUG__
		ASSERT(target);
#endif
		
	}
	lock(&flloc_lock);
	switch(de->ft){
		case FT_UNKNOW:{
			printk("unkonw file type\n");
			break;
		}
		case FT_REGULAR:{
			in = find_in_itable(target->inode_index);	
			if(in){
				ipushp(in,p);
			}
			else in = load_file(target,of);
			if(!in) return fd;
			else{
#ifdef	__DEBUG__
				ASSERT(in->open_cnt == 1);
#endif
			}
			read_file_to_block(in,de->fname,0);
			
			switch(of){
				case O_RO:{
					break;
				}
				case O_CRT:{}
				case O_WR:{
					break;
				}
				default: break;
			}
			break;
		}
		case FT_DIRECTORY:{
			printk("directory cannot be opened\n");
			return;
		}
		default : break;
	}	
	unlock(&flloc_lock);
	fd = install_file(p,in,de->fname,path,0,of);
	return fd;
}

bool close_file(int fd){
	proc * p = get_running()->proc;
	file * f = (file *)p->fd[fd];
	inode * in = f->iptr;
	if(f->dirty){	
		lock(in->write_lock);
		//分配所需要的所有block
		uint_32 old_bcnt = DIV_ROUND_UP(in->entry->fsize,BLOCK_SIZE);
		uint_32 bcnt = DIV_ROUND_UP(f->fsize,BLOCK_SIZE) - old_bcnt;
		if(bcnt){
			//如果需要额外分配块
			int * blocks = sys_malloc(4 * MAX_FILE_BCNT);
			//先读入当前所有的块
			int i = 0;
			for(;i < INODE_PRIMARY_INDEX_CNT;++i)
				blocks[i] = in->entry->block[i];
			//如果存在间接块
			if(in->entry->block[i]){
#ifdef __DEBUG__
				ASSERT(DIV_ROUND_UP(in->entry->fsize,BLOCK_SIZE) >= (INODE_PRIMARY_INDEX_CNT + 1));
#endif
				read_hd(cur_part->mydisk,blocks + INODE_PRIMARY_INDEX_CNT,in->entry->block[i],1);
				i = old_bcnt;
			}
			//分配所需的额外块	
			for(;i < bcnt + old_bcnt;++i){
				blocks[i] = block_alloc();
				if(blocks[i] == -1){
					printk("cannot save file,disk has already full\n");
					//undo
					for(--i;i >=old_bcnt;--i)
						block_free(blocks[i]);
					return false;
				}
			}
			add_inode(in->entry->index,blocks,f->fsize);
			sys_free(blocks);
		}
		lst_traverse(&f->iptr->buf_list,fbuf_sycn,in->entry);
		lst_free_elem(&f->iptr->buf_list,fbuf_free);
		unlock(in->write_lock);
	}
	irmp(in,p);
	uninstall_file(p,fd);
	if(lst_empty(&in->proc_list)){
#ifdef __DEBUG__
		ASSERT(in->open_cnt == 0);
#endif
		close_inode(in);
	}
}


//把指定位置的块读入并返回该位置的指针
//end返回了fblock中数据的结束位置	
char * seek(int fd,uint_32 * end,uint_32 fpos){
	proc * p = get_running()->proc;
	file * f = p->fd[fd];
	list_node * tag = lst_find_elem(&f->iptr->buf_list,fpos_cmp,fpos);
	fbuf * fb;
	if(!tag){
		fb = sys_malloc(sizeof(fbuf));
		fb->start_pos = fpos & BLOCK_SIZE; 
		fb->empty = false;
		fb->dirty = false;
		if(fpos >= f->iptr->entry->fsize){
			printk("out of file size :file %s size %d fpos %d\n",f->fname,\
				f->iptr->entry->fsize,fpos);
			return NULL;
		}
		read_block(f->iptr->entry,fpos,fb->data);
		lst_insert_elem(&f->iptr->buf_list,&fb->tag,fpos_cmp,fpos);
	}
	else	fb = struct_get(fbuf,tag,tag);
	*end = fb->data + BLOCK_SIZE;
	return fb->data + (f->fpos & ~BLOCK_SIZE);
}

bool read_file(int fd,char * dst,size_t size){
	proc * p = get_running()->proc;
	file * f = p->fd[fd]; 
	uint_32 pos = f->fpos & BLOCK_SIZE;
	if(pos >= MAX_FILE_BCNT * SECTOR_SIZE){
		printk("fpos out of the limit of file's size\n");
		return false;
	}
	uint_32 end;
	char * src = seek(fd,&end,pos); 
	size_t down = 0,opbytes = 0;
#ifdef __DEBUG__
	ASSERT(src <= end);
#endif
	actomic_action(read_set,f->iptr);
	while(true){
		if(down >= size){
			finish_reading(f->iptr);
			return true;
		}
		if(src >= end){
			pos += BLOCK_SIZE;
			src = seek(fd,&end,pos);
			if(!src) return false;
		}
		
		if(size - down >= BLOCK_SIZE)
			opbytes = BLOCK_SIZE;
		else
			opbytes = size - down;
		memcopy(dst,src,opbytes);
		down += opbytes;
	}
	return false;
}

bool write_file (int fd,char * src,size_t size){
	proc * p = get_running()->proc;
	file * f = (file *)p->fd[fd];
	uint_32 pos = f->fpos & BLOCK_SIZE;
	printk("write pos:0x%x\n",pos);
	if(pos >= MAX_FILE_BCNT * SECTOR_SIZE){
		printk("fpos out of the limit of file's size\n");
		return false;
	}
	if(f->fsize < f->fpos + size){
		f->fsize = f->fpos + size;
	}
	uint_32 end;
	fbuf * fb;
	lock(f->iptr->write_lock);
	actomic_action(write_set,f->iptr);
	char * dst = seek(fd,&end,pos); 
	//如果dst返回NULL，说明要写的位置实际超出了当前文件大小
	//那么就把从文件末尾到要写的位置的末尾的所有块一次在内存中分配完成
	//这里并不会进行磁盘块的分配，只是写到缓存区而已
	if(!dst){
		int bcnt = DIV_ROUND_UP(size,BLOCK_SIZE);
		int i;
		for(i = 0;i < bcnt;++i){
			fb = sys_malloc(sizeof(fbuf));
			fb->empty = false;
			fb->dirty = true;
			fb->start_pos = pos + i * BLOCK_SIZE;
			lst_insert_elem(&f->iptr->buf_list,&fb->tag,fpos_cmp,pos + i*BLOCK_SIZE);
		}
	}
	printk("dst : 0x%x\n",dst);
	size_t down = 0,opbytes = 0;
#ifdef __DEBUG__
	ASSERT(dst <= end);
#endif
	f->dirty = true;
	while(true){
		if(down >= size){
			f->iptr->is_writing = false;
			unlock(f->iptr->write_lock);
			conditional_notify(f->iptr->write_cv);
			return true;
		}
		if(dst >= end){
			pos += BLOCK_SIZE;
			dst = seek(fd,&end,pos);
			if(!dst) {
				fb = sys_malloc(sizeof(fbuf));
				fb->empty = false;
				fb->dirty = true;
				fb->start_pos = pos;
				dst = fb->data;
				lst_insert_elem(&f->iptr->buf_list,&fb->tag,fpos_cmp,pos);
			}
		}
		
		if(size - down >= BLOCK_SIZE)
			opbytes = BLOCK_SIZE;
		else
			opbytes = size - down;
		memcopy(dst,src,opbytes);
		fb = struct_get(fbuf,data,dst);
		fb->dirty = true;
		down += opbytes;
		f->fpos += opbytes;
	}
	return false;
}

void set_fpos(int fd,size_t pos){
	file * f = get_running()->fd[fd];
	f->fpos = pos;
}

/*********************系统调用接口**************************/
bool sys_seek(int fd,size_t pos){
	char * res;
	uint_32 end;
	set_fpos(fd,pos);
	res = seek(fd,&end,pos);
	if(!res)
		return false;
	else return true;
}

void sys_fresh(int fd){
	
}

dir* sys_cd(char * path){
	dir * d = sys_malloc(sizeof(dir));
	d->path = sys_malloc(strlen(path));
	memcopy(d->path,path,strlen(path)); 
	if(!open_dir(path,d)){
		printk("Open directory %s filed\n",path);
		return NULL;
	}	
	set_workdir(get_running()->proc,d);
	return d;
}










