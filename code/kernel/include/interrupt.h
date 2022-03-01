#ifndef __KERNEL_INTERRUPT
#define __KERNEL_INTERRUPT
enum int_status{
	INT_OFF,INT_ON
};

enum int_status get_int_status(void);
enum int_status int_enable(void);
enum int_status int_disable (void);
enum int_status set_int_status(enum int_status s);

#endif
