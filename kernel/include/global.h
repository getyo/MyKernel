#ifndef __MEM_MANGE__H
#define __MEM_MANGE__H

#define __DEBUG__
#define DIV_ROUND_UP(a,b) ( (a-1)/(b+1)+1 )
#define INT32_MIN 0xffffffff
#define GREATER(a,b) (a>b?a:b)

#define KERNEL_BITMAP 0xc009a000
#define KERNEL_START 0x201000
#define PAGE_SIZE (0x1000)	//4K
#define KERNEL_VIR_MEM_SIZE 0x40000000	//1G
#define KERNEL_VIR_MAP 0x92000	//定义了内核虚拟地址位图起始地址
				//位图大小大约为0x8000（没有减去低端1M）,到0x9a000即内核物理内存位图起始处刚好结束
#define U_VIR_START 0x0
#define U_VIR_SIZE KERNEL_VIR_MEM_SIZE * 3

#define ALLOCABLE_START  0xc0201000 

//内核页目录表虚拟地址
#define KERNEL_DIR 0xfffff000

#define PG_US_U 4
#define PG_US_S 0
#define PG_RW_W 2
#define PG_RW_R 0
#define PG_P 1
#define MAIN_PCB 0x0009e000
//定义了低端1M的最后可用地址，一般不会用到，所以可以用于为一些临时暂用
#define M_END 0x9FBFF

//段描述符相关参数
#define SG_G_BYTE 0
#define SG_G_4K 0x80
#define SG_DB_32 0x40
#define SG_DB_16 0
#define SG_P 0x80
#define SG_NP 0
#define SG_DPL_0 0
#define SG_DPL_1 0x20
#define SG_DPL_2 0x40
#define SG_DPL_3 0x60
#define SG_S 0
#define SG_NS 0x10
#define SG_TYPE_DE 0x4
#define SG_TYPE_DW 0x2
#define SG_TYPE_DA 0x1
#define SG_CODE 8
#define SG_TYPE_CC 4
#define SG_TYPE_CR 2
#define SG_TYPE_CA 1
#define GDT_BASE 0xc0000903
#define U_ST 0x7000ffff
#define U_CODE 0x70001000
//系统段即用户段选择子
#define SEL_CODE 0x8
#define SEL_DATA 0x10
#define SEL_UD 0x23
#define SEL_UC 0x2b
//tss选择子
#define SEL_TSS 0x30
//eflags相关参数
#define EF_MBS 0x2
#define EF_IOPL3 0x3000
#define EF_IOPL0 0
#define EF_IFEN 0x200
#define EF_IFDIS 0
//根据结构体成员获取结构体
#define member_offset(struct,member) &((struct *)0)->member
#define struct_get(struct,member,memb_addr) ( (uint_32)memb_addr - (uint_32)member_offset(struct,member) )
//文件系统相关
#define MAX_FNAME_LENGTH 16
#define SECTOR_SIZE 512
#define BLOCK_SIZE SECTOR_SIZE
#define SECTOR_BIT 4096
#define BLOCK_BIT SECTOR_BIT
#define FS_MAGIC 0x568542e0
#define FS_MAX_INODE_CNT 4096
#define SUPER_BLOCK_LBA 0x1
#endif
