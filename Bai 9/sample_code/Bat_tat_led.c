#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/io.h>

//static int *gpio_func = (int*) 0xF2200004;
//static int *gpio_set = (int*) 0xF220001C;

#define GPIO_ADDR_BASE 		0x20200000


unsigned int *gpio_base;
unsigned int *set_mode;
unsigned int *set_high;
unsigned int *set_low;

int __init init_module(void){
	printk(KERN_INFO "Hello World!\n");
	gpio_base = (unsigned int *)ioremap(GPIO_ADDR_BASE,0x100);

	set_mode = (unsigned int *)gpio_base+1;
	(*set_mode) = ((*set_mode)&(~(7<<21)))|(1<<21);

	
	set_high = (unsigned int *)(gpio_base+7);
	(*set_high) = 1<<17;

	return 0;
}

void __exit cleanup_module(void){

	printk(KERN_INFO "Goodbye!\n");

	set_low = (unsigned int *)(gpio_base+10);
	(*set_low) = 1<<17;
}

