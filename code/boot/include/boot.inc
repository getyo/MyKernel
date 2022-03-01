;定义loader的参数，第一个是loader将要加载在内存中的地址，第二个是loader的起始扇区号
LOADER_BASE_ADDR equ 0x900
LOADER_START_SECTOR equ 0x2

;定义全局段描述符的高32位，命名格式为 段/选择子_段名_字段名
;有三个段需要定义，栈/数据段，代码段，显存段（段地址实际为文本显存）

;c = 1100(G B/D L AVL)
;G字段为1 表示段的粒度为4K
;D/B是1  表示操作数为32位
;L 为0表示指令为32位
;AVL没有实际意义

SG_DATA_GBLA equ (1100b << 20)
SG_CODE_GBLA equ SG_DATA_GBLA
SG_VIDEO_GBLA equ SG_DATA_GBLA

;定义段界限的高4位，段界限实际为段中单位粒度的最大偏移量
;这个大小实际上人为规定的，这里定义DATA和CODE段为2^28byte
;即4G = 4K* 2^20 
;由于段中逻辑地址从开始记起，所以段界限为0xffff即代表粒度数量为2^16
SG_DATA_LIM1 equ (1111B << 16)
SG_CODE_LIM1 equ (1111B << 16)
;显存受限于物理空间的约束，为0xb8000 -- 0xb7fff
;段界限为0x7
SG_VIDEO_LIM1 equ (0000B << 16)

;定义P DPL S字段
;P :present 为1表示内存在段中
;DPL 有两位，可表示四种特权级别，越小有限级越高
;S 为1表示为数据段，0表示系统段，这里的数据是相对与CPU来说的
;只有控制信号才会被列为系统段

SG_DATA_PDS equ 1001_0000_0000_0000b
SG_CODE_PDS equ SG_DATA_PDS
SG_VIDEO_PDS equ SG_DATA_PDS

;定义type字段
;type有两种表示方式
;XCRA XEWA
;X为是否可执行的标志位，若X=1表示此段是代码段，则type为XCRA
;C为一致性代码段，具体解释看书
;R为是否可读的标志位
;A由CPU设置，为1表示CPU已经访问过
;X=0表示此段为数据段,type为XEWA
;E表示扩展方向 E=1代表向低地址方向扩展
;W为是否可写的标志位
SG_DATA_TYPE equ 0010_0000_0000b
SG_CODE_TYPE equ 1000_0000_0000b
SG_VIDEO_TYPE equ 0010_0000_0000b

;定义段基址低23-16位
SG_DATA_ADDR equ 0x00
SG_CODE_ADDR equ 0x00
SG_VIDEO_ADDR equ 0x0b

;定义段低32位
SG_DATA_LOW32 equ 0x0000ffff
SG_CODE_LOW32 equ SG_DATA_LOW32
SG_VIDEO_LOW32 equ 0x80000007

;汇总段描述符
SG_DATA equ (((0x0 << 28) + SG_DATA_GBLA + SG_DATA_LIM1 + SG_DATA_PDS + SG_DATA_TYPE + SG_DATA_ADDR) << 32) + SG_DATA_LOW32
SG_CODE equ (((0x0 << 28) + SG_CODE_GBLA + SG_CODE_LIM1 + SG_CODE_PDS + SG_CODE_TYPE + SG_CODE_ADDR) << 32) + SG_CODE_LOW32
SG_VIDEO equ (((0x0 << 28) + SG_VIDEO_GBLA + SG_VIDEO_LIM1 + SG_VIDEO_PDS + SG_VIDEO_TYPE + SG_VIDEO_ADDR) << 32) + SG_VIDEO_LOW32

;构建选择子
SEL_DATA equ (0x0002 << 3) + 000b
SEL_CODE equ (0x0001 << 3) + 000b
SEL_VIDEO equ (0x0003 << 3) + 000b

;构建某些等级选项 如DPL RPL
DPL_0 equ 00_0_0000_0000_0000b
DPL_1 equ 01_0_0000_0000_0000b
DPL_2 equ 10_0_0000_0000_0000b
DPL_3 equ 11_0_0000_0000_0000b 
 
RPL_0 equ 00b
RPL_1 equ 01b
RPL_2 equ 10b
RPL_3 equ 11b

LDT equ 000b
GDT equ 100b


;----------------------------定义页表相关参数--------------------------------------------
PDT_DIR_BASE_ADDR equ 0x100000

;定义US字段
;U代表该页为用户地址空间
;S代表该页为系统地址空间
PDT_US_U equ 100b
PDT_US_S equ 000b

;RW字段
;R为可读，W为可读可写
PDT_RW_R equ 00b
PDT_RW_W equ 10b

;定义P位
;P表示该页存在于物理内存，NP表示不存在
PDT_P equ 1b
PDT_NP equ 0b

;-------------------------载入内核参数-------------------------------------------
KERNEL_FILE_BASE_ADDR equ 0x70000
KERNEL_BASE_ADDR equ 0xc0001500
KERNEL_START_SECTOR equ 0x7
















