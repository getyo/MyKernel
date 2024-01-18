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
			if(true){
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
}

void read_root(partition * p){
	cur_part = p;
	p->root = &root_dir;
	//读入root的inode
	char * buf = sys_malloc(sizeof(SECTOR_SIZE * 2));
	inode_entry * root_entry = read_inode(p->sb->root_index,buf);
	p->root->iptr = sys_malloc(sizeof(inode));
	init_inode(p->root->iptr,1,root_entry);

	p->root->pos = 0;
	//读入root的数据块
	read_block(p->root->iptr->entry,0,p->root->buf);
	sys_free(buf);
}

void reload_root(){
	//读入root的inode
	reopen_inode(root_dir.iptr,cur_part->sb->root_index);
	read_block(root_dir.iptr->entry,root_dir.pos,root_dir.buf);
}

bool mount (list_node * tag,uint_32 arg){
	partition * p = struct_get(partition,tag,tag);
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
	
	//读入根目录
	read_root(p);
	print_dir(&root_dir);
	printk("sb_block:%d\n",p->sb->block_start);
	//print_dir(&root_dir);
	return false;
}


/**********************inode和block操作******************/

void bitmap_sycn(uint_32 bit_index,bitmap_type bmt){
	uint_32 sec_index = bit_index / SECTOR_BIT;
	char * buf_addr;
	switch(bmt){
		case BM_INODE:{
			ASSERT(sec_index < cur_part->sb->inode_bm_sects);
			buf_addr = (char *)cur_part->inode_bm->map + sec_index * SECTOR_SIZE;
			write_hd(cur_part->mydisk,buf_addr,cur_part->sb->inode_bm_addr + sec_index,1);
			break;
		}
		case BM_BLOCK:{
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

inode_entry * write_inode(inode_entry * ie,char *buf){
	__F;
	uint_32 byte_st = ie->index * sizeof(inode_entry);
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

void open_inode(inode * i,uint_32 index){
	char * buf = sys_malloc(SECTOR_SIZE * 2);
	inode_entry * entry = read_inode(index,buf);
	init_inode(i,1,entry);
	sys_free(buf);
	return;
}

void reopen_inode(inode * i,uint_32 index){
	__F;
	printk("0x%x\n",get_running());
	char * buf = sys_malloc(SECTOR_SIZE * 2);
	__F;
	inode_entry * entry = read_inode(index,buf);
	
	i->dirty = false;
	memcopy(i->entry,entry,sizeof(inode_entry));	
	sys_free(buf);
}

//本函数提供inode结构中entry的内容分配，需要注意在关闭文件时释放
void init_inode(inode * i,uint_32 open_cnt,inode_entry * entry){
	i->open_cnt = open_cnt;
	i->is_writing = false;
	i->dirty = false;
	i->entry = sys_malloc(sizeof(inode_entry));
	memcopy(i->entry,entry,sizeof(inode_entry));
	init_list(&i->proc_list);
	proc * p = (proc *)get_running()->proc;
	lst_push(&i->proc_list,&p->general_tag);	
}

void close_inode(inode * in){
	if(in->dirty){
		char * buf = sys_malloc(SECTOR_SIZE*2);
		write_inode(in->entry,buf);
		sys_free(buf);
	}
	sys_free(in->entry);
	return;	
}

int inode_alloc(){
	return bit_alloc(cur_part->inode_bm,1);
}

int block_alloc(){
	return bit_alloc(cur_part->block_bm,1);
}

void add_inode(uint_32 i_no,uint_32 * blocks,uint_32 fsize){
	inode_entry * ie = sys_malloc(sizeof(inode_entry));
	ie->index = i_no;
	ie->fsize = fsize;
	uint_32 bcnt = DIV_ROUND_UP(fsize,SECTOR_SIZE);	
	uint_32 i = 0;
	for(;i < bcnt;++i){
		ie->block[i] = blocks[i] + cur_part->sb->block_start;
	}
	
	char * buf = sys_malloc(2* SECTOR_SIZE);
	write_inode(ie,buf);
	sys_free(buf);
	sys_free(ie);
}

/***********************目录操作*************************/

//把path中的路径前进一级，并且把已经前进的目录名加入search_path
static char * parse_path(char * path,char * search_path){
	while(*path == '/') ++path;
	
	while(*path != '/' && *path != '\0') {
		*search_path++ =  *path++;
	}
	if(*path == '/') ++path;
	return path;
}

static dir_entry * find_in_dir(char * fname,dir * d){
	dir_entry * di = &d->buf;
	while(true){
		if(!strcmp(fname,di->fname)) 
			return di;
		else if(!strcmp("",di->fname))
			return NULL;
		++di;
	}
}

//注意read_dir的用法
//1.目录本身的内存由主调函数提供，但是目录inode内存由本函数提供
//关闭目录需要注意关闭inode的内存
//2.buf可被释放，里面的内容已被复制到dir的inode_ptr中
//3.de是在父目录找到的本目录目录项
static dir * read_dir(dir_entry *de,dir * d,char * buf){
	//读入并初始化目录的inode
	d->iptr = sys_malloc(sizeof(inode));
	open_inode(d->iptr,de->inode_index);
	
	d->pos = 0;
	read_block(d->iptr->entry,0,d->buf);
	return d;
}

//注意和read_dir不同，这里没有再次申请inode的空间
static dir * reload_dir(dir_entry *de,dir * d,char *buf){
	if(d->iptr->dirty){
		printk("the file has already changed,are you sure to reload?\n");
	}
	
	printk("%s\n",get_running()->name);
	reopen_inode(d->iptr,de->inode_index);
	
	read_block(d->iptr->entry,d->pos,d->buf);
	return d;
}

#define ROOT_ENTRY 0xff501910
dir_entry* search_file(char * path, search_log * s_log){
	//根目录直接返回
	if(!strcmp(path,"/") || !strcmp(path,"/.")
		|| !strcmp(path,"/..")){
		s_log->search_path[0] = '\0';
		s_log->parent = &root_dir;
		s_log->ft = FT_DIRECTORY;
		return ROOT_ENTRY;
	}	
	ASSERT(strlen(path) <= MAX_DIR_SEARCH_LENGTH);
	ASSERT(path[0] == '/');

	memset_8(s_log->search_path,MAX_DIR_SEARCH_LENGTH,0);
	dir * parent = &root_dir;
	char * dir_buf = sys_malloc(sizeof(dir));
	dir_entry *de;
	//sp指向search_path中最后一部分，即当前搜索项
	char * sp = s_log->search_path;
	char * buf = sys_malloc(2*SECTOR_SIZE);

	while(true){
		strcat(sp,sp,"/");
		++sp;

		path = parse_path(path,sp);
		de = find_in_dir(sp,parent);
		s_log->parent = parent;
		if(!de){
			s_log->ft = FT_UNKNOW;
			return NULL;
		}
		switch(de->ft){
			case FT_DIRECTORY:{
				s_log->ft = FT_DIRECTORY;
				if(!*path)	parent = read_dir(de,dir_buf,buf);
				else	return de;
				break;
			}
			case FT_REGULAR:{
				s_log->ft = FT_REGULAR;
				if(!*path)	return de;
				else	return NULL;
				break;
			}
			default:break;
		}
	}
}

bool open_dir(char* path,dir * d){
	search_log s_log;
	dir_entry * de = search_file(path,&s_log);
	if(de == ROOT_ENTRY){
		*d = root_dir;
		return true;
	}
	else if(!de){
		return false;
	}
	else {
		char * buf = sys_malloc(BLOCK_SIZE);
		read_dir(de,d,buf);
		sys_free(buf);
		return true;
	}	
}

bool reopen_dir(char *path,dir * d){
	search_log s_log;
	dir_entry * de = search_file(path,&s_log);
	if(de == ROOT_ENTRY){
		reload_root(cur_part);
		return true;
	}
	else if(!de){
		return false;
	}
	else {
		char * buf = sys_malloc(BLOCK_SIZE);
		reload_dir(de,d,buf);
		sys_free(buf);	
		return true;
	}
}

void close_dir(dir * d){
	if(d = &root_dir) return;
	if(!d->iptr->dirty){
		close_inode(d->iptr);
		sys_free(d);
		return;
	}
	//对于修改过的目录
	char * buf = sys_malloc(2*SECTOR_SIZE);
	write_inode(d->iptr->entry,buf);
	sys_free(buf);
	write_block(d->iptr,d->pos,&d->buf);
	return;		
}

bool add_entry(dir * parent,char * fname,uint_32 i_no,ftype ft){
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
		__F;
		write_hd(cur_part->mydisk,buf,blocks[sect_offset],1);
		__F;
		parent->iptr->entry->fsize += sizeof(dir_entry);
		//将更新同步到父目录inode中
		write_inode(parent->iptr->entry,buf);
		sys_free(buf);
		return true;
	}
	else if(sect_offset > MAX_FILE_BCNT){
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
		write_inode(parent->iptr->entry,buf);
		sys_free(buf);
		return true;
	}	
	
}

void print_dir(dir *d){
	__F;
	uint_32 dsize = d->iptr->entry->fsize;
	dir_entry * de = d->buf;
	int i = 0;
	for(; i*sizeof(dir_entry) < dsize ;++i){
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
		de++;
	}
}

/*********************文件操作*************************/

bool create_file(dir * p,char * fname,ftype ft,uint_32 fsize){
	if(strlen(fname) > MAX_FNAME_LENGTH){
		printk("file name is longer than limit : %d characters\n",MAX_FNAME_LENGTH);
		return false;
	}
		
	//分配inode
	int i_no = inode_alloc();
	if(i_no == -1) {
		printk("allocate inode failed\n");
		return false;
	}
	bitmap_sycn(i_no,BM_INODE);
	//根据文件大小分配对应的块，最少为1块
	uint_32 bcnt = DIV_ROUND_UP(fsize,SECTOR_SIZE);
	if(bcnt > MAX_FILE_BCNT) {
		printk("file size is too big\n");
		return false;
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
			return false;
		}
	}
	//向磁盘写入inode
	add_inode(i_no,blocks,fsize);
	//向父目录写入目录项
	return add_entry(p,fname,i_no,ft);
}	






























