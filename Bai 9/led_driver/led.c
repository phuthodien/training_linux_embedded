#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/io.h>

#define BASE_ADDR 0x01C20800
//pa17
#define LED_GREEN 17

#define OFF_SET_CONFIG_REG 0x08

#define OFF_SET_CONFIG    4 
#define DATA_REG    	  0x10 

static void __iomem *io;
static unsigned long temp;
static int __init hello_init(void) {
	pr_info("hello world");
	
	io = ioremap(BASE_ADDR, 0x100);
	if(io == NULL) 	{
		pr_alert("fail map base address\n");
		return -1;
	}
	temp = ioread32(io + OFF_SET_CONFIG_REG);
	pr_info("before config reg %ld\n", temp);
	
	//set config mode output for pa17	
	temp = temp & (~(0x7<< OFF_SET_CONFIG));
	
	//set mode output
	temp |= (0x01 << OFF_SET_CONFIG);

	iowrite32(temp, (io + OFF_SET_CONFIG_REG)); 
	pr_info("after config reg %ld\n", temp);

	//turn on led
	temp = ioread32(io + DATA_REG);
	pr_info("before data reg %ld\n", temp);
	temp |= ( 1 << LED_GREEN);
	iowrite32(temp , (io +DATA_REG));
	pr_info("after data reg %ld\n", temp);
	return 0;
}

static void __exit hello_exit(void) {
	//turn off led
	temp = ioread32(io + DATA_REG);
	temp &= ~( 1 << LED_GREEN);
	iowrite32(temp , (io +DATA_REG));
	pr_info("exit module");	
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_AUTHOR("linux embedded");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("test led");
