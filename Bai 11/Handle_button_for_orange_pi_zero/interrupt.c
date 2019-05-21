#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/gpio.h>
#include <asm/io.h>

#define AUTHOR "NGUYEN HUU THINH"

#define BUTTON 0
#define BASE_ADD_GPIO 0x01C20800
#define OFFSET_GPIOA 0x00
#define OFFSET_GPIOA_PULL 0x1C
#define OFFSET_EXTERNAL_INTERRUPT_GPIOA 0x200
#define SIZE_EXTERNAL_INTERRUPT_GPIOA 0x20
#define SIZE_GPIOA_PULL 0x08
#define SIZE_GPIOA 0x14

unsigned char irq_eint0;
unsigned int *gpioa_0_7;
unsigned int *ex_gpioa_0_7;
unsigned int *gpioa_pull_0_15;

irqreturn_t external_interrupt_handler(int irq, void *dev_id, struct pt_regs *regs)
{

	if((gpioa_0_7[4] & (1 << 0)) == 0)
	{
		if((gpioa_0_7[4] & (1 << 1)) == 0)
		{
			gpioa_0_7[4] |= (1 << 1);
			printk("led_on\n");
		}
		else
		{
			gpioa_0_7[4] &= ~(1 << 1);
			printk("led_off\n");
		}
	}
	return IRQ_HANDLED;

}

static int __init external_interrupt_init(void)
{
	int ret;
	printk("START!\n");
	//Mapping GPIOA_0_7
	gpioa_0_7 = ioremap(BASE_ADD_GPIO + OFFSET_GPIOA, SIZE_GPIOA);
	if(gpioa_0_7 == NULL)
	{
		printk("Mapping address gpioa fail\n");
		return -1;
	}

	//Select EINT0 mode GPIOA_0
	gpioa_0_7[0] &= ~(7 << 0);
	gpioa_0_7[0] |= (6 << 0);

	//Select output mode GPIOA_1
	gpioa_0_7[0] &= ~(7 << 4);
	gpioa_0_7[0] |= (1 << 4);

	//Mapping EINT_GPIOA
	ex_gpioa_0_7 = ioremap(BASE_ADD_GPIO + OFFSET_EXTERNAL_INTERRUPT_GPIOA, SIZE_EXTERNAL_INTERRUPT_GPIOA);
	if(ex_gpioa_0_7 == NULL)
	{
		printk("Mapping ex_gpioa fail\n");
		return -1;
	}

	//EINT0 Negative Edge
	ex_gpioa_0_7[0] &= ~(15 << 0);
	ex_gpioa_0_7[0] |= (1 << 0);

	//Mapping gpioa pull
	gpioa_pull_0_15 = ioremap(BASE_ADD_GPIO + OFFSET_GPIOA_PULL, SIZE_GPIOA_PULL);
	if(gpioa_pull_0_15 == NULL)
	{
		printk("Mapping gpioa pull fail!\n");
		return -1;
	}
	//GPIOA0 PULL UP
	gpioa_pull_0_15[0] &= ~(3 << 0);
	gpioa_pull_0_15[0] |= (1 << 0);

	//Init interrupt.
	irq_eint0 = gpio_to_irq(BUTTON);
	ret = request_irq(irq_eint0, (irq_handler_t) external_interrupt_handler, IRQF_SHARED, "EINT0", (void *)external_interrupt_handler);
	if(ret)
		printk("Init EINT0 success\n");
	return 0;
}

static void __exit external_interrupt_exit(void)
{
	printk("END!\n");
	iounmap(gpioa_0_7);
	iounmap(ex_gpioa_0_7);
	iounmap(gpioa_pull_0_15);
	free_irq(irq_eint0, (void *)external_interrupt_handler);
}

module_init(external_interrupt_init);
module_exit(external_interrupt_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR(AUTHOR);



