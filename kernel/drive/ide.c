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

ide_channel channel[2];
list part_lst;
//channel的初始化
void channel_init()
{
	//475里有硬盘个数
	char hd_cnt = *(char *)(0x475);
	//虽然本质上这里channel的个数就是2，但为了兼容，使用硬盘个数/2来计算 \
	一个channel上挂两个硬盘
	uint_8 ide_cnt = hd_cnt/2;
	uint_8 i = 0;
	ide_channel * c;
	while(i <= ide_cnt){
		c = &channel[i];
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
	write_port(idep_dev(hd->my_channel),dev);
	return hd;
}

//指定扇区范围
void select_sector(disk * hd,uint_32 start_lba,uint_8 sector_cnt)
{
	ide_channel * channel = hd->my_channel;
	//从低到高写入lba
	uint_8 lba = start_lba & 0xff;
	write_port(idep_lbal(hd->my_channel),lba);
	lba = (start_lba >> 8);
	write_port(idep_lbam(hd->my_channel),lba);
	lba = (start_lba >> 16);
	write_port(idep_lbah(hd->my_channel),lba);
	
	//写入扇区高4位到dev时，要注意不能覆盖之前写入dev的信息
	lba = (start_lba >> 24);
	write_port(idep_dev(hd->my_channel),DEV_LBA | DEV_MBS | (hd->dev_no ? DEV_SHD : 0) | lba);
	
	//写入扇区数
	write_port(idep_sector_cnt(hd->my_channel),sector_cnt);
}

//向通道发出命令
void send_cmd(ide_channel * c,uint_8 cmd)
{
	c->expecting_intr = true;
	printk("channel:%s \n the port is 0x%x\n",c->name,idep_cmd(c));
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
void read_hd(disk * hd,char * buf,uint_32 start_lba,uint_32 sector_cnt)
{
	lock(&hd->my_channel->lock);
	select_disk(hd);
	select_sector(hd,start_lba,sector_cnt);
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
	read_stream(idep_data(hd->my_channel),buf,(sector_cnt*512/8));
	unlock(&hd->my_channel->lock);
}

//写入硬盘扇区
void write_hd(disk * hd,char *buf,uint_32 start_lba,uint_32 size)
{
	lock(&hd->my_channel->lock);
	select_disk(hd);
	select_sector(hd,start_lba,size / 512);
	send_cmd(hd->my_channel,CMD_WRITE);
	//利用阻塞当前线程，等待硬盘中断唤醒
	sema_down(&hd->my_channel->s);
	
	//这里进行一次检测，看看硬盘是否准备好了，如果不是硬件出错，一般不会出现问题
	if(! hd_busy(hd))
	{
		printk("%s error : channel %s \n",hd->name,hd->my_channel->name);
		printk("write to lba %d failed",start_lba);
		asm("hlt");
	}
	
	write_stream(idep_data(hd->my_channel),buf,size);
	unlock(&hd->my_channel->lock);
}

//硬盘中断处理函数
void hd_intr()
{
	//通过中断向量号确定channel
	uint_32 int_vec;
	asm volatile("movw 8(%%ebp),%0":"=r"(int_vec):);
	ide_channel * c = &channel[int_vec - 0x2e];
	printk("%s ready\n",c->name);
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
		read_partition(hd);
		
		int i;
		printk("\n\nname         start_lba       end_lba\n");
		lst_traverse(&part_lst,out_partition);
	}
}

void out_partition(list_node * tag)
{
	partition * p = (uint_32)tag - (uint_32)&((partition *)tag)->tag;
	printk("%s	%d	%d \n",p->name,p->start_lba,p->end_lba);
}
void identify_disk(disk * hd)
{
	__F;
	char buf[512];
	lock(&hd->my_channel->lock);
	send_cmd(hd->my_channel,CMD_IDENTIFY);
	//利用阻塞当前线程，等待硬盘中断唤醒
	//printk("semalist head: %d\n",hd->my_channel->s.acquirer.head);
	sema_down(&hd->my_channel->s);
	//这里进行一次检测，看看硬盘是否准备好了，如果不是硬件出错，一般不会出现问题
	if(! hd_busy(hd))
	{
		printk("%s error : channel %s \n",hd->name,hd->my_channel->name);
		asm("hlt");
	}
	int i = 0;
	while(i < 512)
	{
		//因为identify命令返回数据以字为单位，需要调整
		buf[i+1]  = read_port(idep_data(hd->my_channel));
		buf[i] = read_port(idep_data(hd->my_channel));
		i+=2;
	}
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
	__F;
	part_id = 0;
	bool ext = true;
	int part_cnt;
	boot_sector bs;
	partition_entry * p;
	uint_32 start_sector = 0;
	//记录初始化了到了主/扩展分区
	uint_8 part_p_cnt = 0,part_e_cnt = 0;
	while(ext){
		ext = false;
		part_cnt = 0;
		//读取引导扇区
		read_hd(hd,&bs,start_sector,sizeof(boot_sector));
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
				if(p->start_sector == 0)
				{
					hd->part_p[part_p_cnt].is_ext = false;
					partition_init(&hd->part_p[part_p_cnt],p,hd);
					lst_push(&part_lst,&hd->part_p[part_p_cnt].tag);
					++part_p_cnt;
				}
				else
				{
					hd->part_p[part_p_cnt].is_ext = true;
					partition_init(&hd->part_e[part_e_cnt],p,hd);
					lst_push(&part_lst,&hd->part_p[part_e_cnt].tag);
					++part_e_cnt;
				}
			}
		}
	}
}


partition * partition_init(partition * part,part_entry * pe,disk * hd)
{
	__F;
	char * n = formative_str("%s%c",part->name,hd->name,'0' + part_id++);
	memcopy(part->name,n,strlen(n));
	part->start_lba = pe->start_sector;
	part->end_lba = pe->end_sector;
	part->mydisk = hd;
	init_bit_map(&part->sector_bitmap);
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






