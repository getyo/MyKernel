#include "ide.h"
#include "port_io.h"
#include "string.h"

//定义channel的各个命令端口
#define idep_data(channel) (channel->port_base)
//读时error,写时features
#define idep_err(channel) (channel->port_base + 1)
#define idep_features(channel) (channel->port_base + 1)

#define idep_sector_cnt(channel) (channel->port_base + 2)

#define idep_lbal(channel) (channel->port_base + 3)
#define idep_lbam(channel) (channel->port_base + 4)
#define idep_lbah(channel) (channel->port_base + 5)

#define idep_dev(channel) (channel->port_base + 6)

//读时status，写时command
#define idep_status(channel) (channel->port_base + 7)
#define idep_cmd(channel) (channel->port_base + 7)


#define CMD_IDENTIFY 0xec
#define CMD_READ 0x20
#define CMD_WRITE 0x30

//device寄存器相关值
#define DEV_MBS 0xa0	
#define DEV_LBA 0x40
#define DEV_SHD 0x10	//从盘

//status寄存器相关值
#define STATUS_BSY 0x80	//忙
#define STATUS_DRDY 0x40	//等待接受命令
#define STATUS_DRQ 0x08		//已准备好数据
#define STATUS_ERR 0x01		//出错

//channel的初始化
void channel_init()
{
	//475里有硬盘个数
	hd_cnt = *(char *)(0x475);
	//虽然本质上这里channel的个数就是2，但为了兼容，使用硬盘个数/2来计算 \
	一个channel上挂两个硬盘
	uint_8 ide_cnt = hd_cnt/2;
	uint_8 i = 0;
	ide_channel * c;
	while(i <= ide_cnt){
		c = &channel[i];
		memset_8(c->name,0,8);
		char * n = "ide"; 
		memcopy(c->name,n,4);
		c->name[3] = '0' + i;
		c->name[4] = '\0';
		//之所以使用switch是为了便于扩展
		switch(i){
			case 0:{
				c->port_base = 0x1f0;
				c->req_vec = 0x2e;
				register_int(c->req_vec,hd_intr);
				break;
			}
			case 1:{
				c->port_base = 0x170;
				c->req_vec = 0x2f;
				register_int(c->req_vec,hd_intr);
				break;
			}
				
		}
		c->expecting_intr = false;
		init_mutex(&c->lock);
		sema_init(&c->s);
		i++;
	}
}

//选择硬盘
disk * select_disk(disk * hd){
	uint_8 dev = DEV_MBS | DEV_LBA;
	if(hd->dev_no) dev |= DEV_SHD;
	//printk("dev: %x\n",dev);
	write_port(idep_dev(hd->my_channel),dev);
	return hd;
}

//指定扇区范围
void select_sector(disk * hd,uint_32 start_lba,uint_8 sector_cnt)
{
	ide_channel * channel = hd->my_channel;

	write_port(idep_sector_cnt(hd->my_channel),sector_cnt);
	//从低到高写入lba
	uint_8 lba = start_lba;
	write_port(idep_lbal(hd->my_channel),lba);
	lba = (start_lba >> 8);
	write_port(idep_lbam(hd->my_channel),lba);
	lba = (start_lba >> 16);
	write_port(idep_lbah(hd->my_channel),lba);
	
	//写入扇区高4位到dev时，要注意不能覆盖之前写入dev的信息
	lba = (start_lba >> 24);
	uint_8 dev = DEV_LBA | DEV_MBS | (char)(hd->dev_no ? DEV_SHD : 0) | lba;
	write_port(idep_dev(hd->my_channel),dev);
	
	//printk("dev:0x%x\n",dev);
	//写入扇区数
	//write_port(idep_sector_cnt(hd->my_channel),sector_cnt);
}

//向通道发出命令
void send_cmd(ide_channel * c,uint_8 cmd)
{
	c->expecting_intr = true;
	//printk("channel:%s \n the port is 0x%x\n",c->name,idep_cmd(c));
	write_port(idep_cmd(c),cmd);
}

//判断当前硬盘是否空闲
bool hd_busy(disk * hd)
{
	//因为所有操作都能在30s内完成，所以最多等30s
	uint_32 wait_time = 40 * 1000;
	while(wait_time > 0){
		//如果硬盘不忙，返回数据是否已经准备好 \
		如果硬盘忙，睡眠线程
		if(! (read_port(idep_status(channel)) & STATUS_BSY) )
			return read_port(idep_status(channel)) & STATUS_DRQ;
		else 
			mtime_sleep(50);
		wait_time -= 50;
	}
	return false;
}

//读取硬盘扇区
void read_hd(disk * hd,char * buf,uint_32 start_lba,uint_32 sec_cnt)
{
	lock(&hd->my_channel->lock);
	select_disk(hd);
	uint_32 sec_down = 0;
	uint_32 sec_read = 0;	
	uint_32 buf_off = 0;

	//由于硬件限制，每次只能最多读取256个扇区，比256大需要重新再选择扇区读
	//缓存区的大小正确性这里不做检查，由用户保证
	while (sec_down < sec_cnt){
		if( (sec_cnt - sec_down) >= 256){
			sec_read = 256;	
		}
		else {
			sec_read = sec_cnt - sec_down;
		}
		select_sector(hd,start_lba + sec_down ,sec_read);
		send_cmd(hd->my_channel,CMD_READ);
		//利用阻塞当前线程，等待硬盘中断唤醒
		sema_down(&hd->my_channel->s);		

		//这里进行一次检测，看看硬盘是否准备好了，如果不是硬件出错，一般不会出现问题
		if(! hd_busy(hd))
		{
			printk("%s error : channel %s \n",hd->name,hd->my_channel->name);
			printk("read from lba %d failed",start_lba);
			asm("hlt");
		}
	
		//注意读取到buf时要以字节位为单位
		read_wordstream(idep_data(hd->my_channel),buf + buf_off,(sec_read*512/2));
		sec_down += sec_read;
		buf_off += sec_read * SECTOR_SIZE;
	}
	unlock(&hd->my_channel->lock);
}

//写入硬盘扇区
//注意这里的实现，buf本身并不一定是512的整数倍，但是你选择了用扇区作为单位写
//也就是说，最后一个扇区很可能会超出buf的范围，写入一些不该写的东西，
//不过总体来说无伤大雅，因为用户既然写了磁盘，就应该知道那部分是他写入的
//这个问题会有安全性问题，但现阶段并不解决的重点
void write_hd(disk * hd,char *buf,uint_32 start_lba,uint_32 sec_cnt)
{
	lock(&hd->my_channel->lock);
	select_disk(hd);
	uint_32 sec_down = 0;
	uint_32 sec_write = 0;
	uint_32 buf_off = 0;
#ifdef __DEBUG__
	printk("start write: start_lba %d,cnt %d\n",\
		start_lba,sec_cnt);
#endif

	while (sec_down < sec_cnt){
		if( (sec_cnt - sec_down) >= 256){
			sec_write = 256;
		}
		else {
			sec_write = sec_cnt - sec_down;
		}
		select_sector(hd,start_lba + sec_down,sec_write);
		send_cmd(hd->my_channel,CMD_WRITE);
		//这里进行一次检测，看看硬盘是否准备好了，如果不是硬件出错，一般不会出现问题
		if(! hd_busy(hd))
		{
			printk("%s error : channel %s \n",hd->name,hd->my_channel->name);
			printk("write to lba %d failed",start_lba);
			asm("hlt");
		}	
		write_wordstream(idep_data(hd->my_channel),buf + buf_off,sec_write*SECTOR_SIZE/2);
		//利用阻塞当前线程，等待硬盘中断唤醒
		sema_down(&hd->my_channel->s);
		printk("write to sector %d down\n",start_lba + sec_down);
		sec_down += sec_write;
		buf_off += sec_write * SECTOR_SIZE;
	}
	unlock(&hd->my_channel->lock);
}	

static void word_reverse(char * buf,int size){
	int i = 0;
	uint_8 temp;
	for(;i < size;i+=2){
		temp = buf[i];
		buf[i] = buf[i+1];
		buf[i+1] = temp;
	}
}

//硬盘中断处理函数
void hd_intr()
{
	//通过中断向量号确定channel
	uint_32 int_vec;
	asm volatile("movw 8(%%ebp),%0":"=r"(int_vec):);
	ide_channel * c = &channel[int_vec - 0x2e];
	//printk("channel num:%d\n",int_vec-0x2e);
	//printk("%s ready\n",c->name);
	//解除阻塞
	if(c->expecting_intr){
		c->expecting_intr = false;
		sema_up(&c->s);
	}
	//目的是清空硬盘控制器的中断位
	read_port(idep_status(c));
}

//硬盘初始化
void disk_init()
{
	//475里有硬盘个数
	char hd_cnt = *(char *)(0x475),i = 0;
	ide_channel * c;
	disk * hd;
#ifdef __DEBUG__
	printk("disk cnt: %d\n",hd_cnt);
#endif
	for(;i < hd_cnt;++i){
		c = &channel[i/2];
		hd = &c->mydisk[i%2];
		hd->my_channel = c;
		hd->dev_no = i%2;
		char * n = "sd";
		memcopy(hd->name,n,3);
		hd->name[2] = 'a' + i;
		hd->name[3] = '\0';
		identify_disk(hd);
		memset(&hd->part_p,sizeof(partition)*12,0);
		//第0号硬盘是裸盘，并不处理
		if(i){	
			read_partition(hd);
			printk("\nname  start_lba  lba_cnt\n");
			lst_traverse(&part_lst,out_partition,0);
		}
	}
}

bool out_partition(list_node * tag,uint_32 arg)
{
	partition * p = struct_get(partition,tag,tag); 
	printk("%s    %d    %d \n",p->name,p->start_lba,p->lba_cnt);
	return true;
}

void identify_disk(disk * hd)
{
	char buf[512];
	lock(&hd->my_channel->lock);
	select_disk(hd);
	send_cmd(hd->my_channel,CMD_IDENTIFY);
	//利用阻塞当前线程，等待硬盘中断唤醒
	sema_down(&hd->my_channel->s);
	//这里进行一次检测，看看硬盘是否准备好了，如果不是硬件出错，一般不会出现问题
	if(! hd_busy(hd))
	{
		printk("%s error : channel %s \n",hd->name,hd->my_channel->name);
		asm("hlt");
	}
	
	//读取磁盘认证信息，不同与读磁盘命令，不在扇区内读
	read_wordstream(idep_data(hd->my_channel),buf,256);
	word_reverse(buf,512);

	unlock(&hd->my_channel->lock);
	char info[64];
	memset_8(info,64,0);
	printk("disk %s info: \n",hd->name);
	memcopy(info,buf + 20,20);
	printk("SN:%s\n",info);
	memcopy(info,buf + 54,40);
	printk("MODULE:%s \n",info);
	uint_16 sector_cnt = *(uint_16*)(buf + 120);
	printk("SECTOR:%d \n",sector_cnt);
}

char part_id;
void read_partition(disk * hd)
{
	//__F;
	part_id = 0;
	bool ext = true;
	int part_cnt;
	boot_sector bs;
	partition_entry * p;
	uint_32 start_sector = 0;
	//记录初始化了到了主/扩展分区
	uint_8 part_p_cnt = 0,part_l_cnt = 0;
	while(ext){
		ext = false;
		part_cnt = 0;
		//读取引导扇区
		read_hd(hd,&bs,start_sector,1);
		for(;part_cnt < 4; part_cnt++)
		{
			p = &bs.pe[part_cnt];
			//如果是扩展分区，并不进行处理
			if(p->fsys_id == 5)
			{
				ext = true;
				start_sector += p-> offset; 
			}
			else if(p->fsys_id != 0)
			{
				//主分区
				if(!start_sector)
				{
					hd->part_p[part_p_cnt].is_logic = false;
					partition_init(&hd->part_p[part_p_cnt],start_sector + p->offset,p,hd);
					lst_push(&part_lst,&hd->part_p[part_p_cnt].tag);
					++part_p_cnt;
				}
				else //逻辑分区
				{
					hd->part_p[part_p_cnt].is_logic = true;
					partition_init(&hd->part_l[part_l_cnt],start_sector + p->offset,p,hd);
					lst_push(&part_lst,&hd->part_l[part_l_cnt].tag);
					++part_l_cnt;
				}
			}
		}
	}
	//printk("part_p_cnt: %d\n",part_p_cnt);
	//printk("part_l_cnt: %d\n",part_l_cnt);
}


partition * partition_init(partition * part,uint_32 start_lba,part_entry * pe,disk * hd)
{
	//__F;
	memset_8(part->name,8,0);
	formative_str(part->name,"%s%c",hd->name,'0' + part_id++);
	part->start_lba = start_lba;
	part->lba_cnt = pe->sector_cnt;
	part->mydisk = hd;
}

void ide_init()
{
	printk("ide init start\n");
	init_list(&part_lst);
	printk("channel init start\n");
	channel_init();
	printk("ide0 reqvec : %x\n",channel[0].req_vec);
	printk("disk init start\n");
	disk_init();
	printk("idt init down\n");
}







