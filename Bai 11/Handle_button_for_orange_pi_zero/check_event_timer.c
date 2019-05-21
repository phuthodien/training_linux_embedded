#include <linux/module.h>
#include <linux/timer.h>
#include <asm/io.h>

#define AUTHOR "NGUYEN HUU THINH"

#define BUTTON 0
#define BASE_ADD_GPIO 0x01C20800
#define OFFSET_GPIOA 0x00
#define OFFSET_GPIOA_PULL 0x1C
#define SIZE_GPIOA 0x14
#define SIZE_GPIOA_PULL 0x08


static struct timer_list exp_timer;

int flag = 1;
unsigned int *address_gpioa;
unsigned int *address_gpioa_pull;

static void check_button(unsigned long);

static void check_button(unsigned long data)
{
	unsigned int delay = 0.1 * HZ;
	if(((address_gpioa[4] & (1 << 0)) == 0) && flag == 1)
	{
		flag = 0;
		if((address_gpioa[4] & (1 << 1)) == 0)
		{
			address_gpioa[4] |= (1 << 1);
			printk("LED ON\n");
		}
		else
		{
			address_gpioa[4] &= ~(1 << 1);
			printk("LED OFF\n");
		}
	}
	else if(((address_gpioa[4] & (1 << 0)) == 1) && flag == 0)
		flag = 1;
	exp_timer.expires = jiffies + delay;
	exp_timer.function = (void *)check_button;
	add_timer(&exp_timer);

}

static int __init check_event_timer_init(void)
{
	printk("START!\n");

	address_gpioa = ioremap(BASE_ADD_GPIO + OFFSET_GPIOA, SIZE_GPIOA);
	if(address_gpioa == NULL)
	{
		printk("Mapping address gpioa fail\n");
		goto address_gpioa_fail;
	}
	//Select GPIOA_0 input mode
	address_gpioa[0] &= ~(7 << 0);
	//Select GPIOA_1 output mode
	address_gpioa[0] &= ~(7 << 4);
	address_gpioa[0] |= (1 << 4);

	address_gpioa_pull = ioremap(BASE_ADD_GPIO + OFFSET_GPIOA_PULL, SIZE_GPIOA_PULL);
	if(address_gpioa_pull == NULL)
	{
		printk("Mapping gpioa pull fail\n");
		goto address_gpioa_pull_fail;
	}

	//Select GPIOA_0 PULL UP.
	address_gpioa_pull[0] &= ~(3 << 0);
	address_gpioa_pull[0] |= (1 << 0);

	//Khoi tao timer
	//init_timer_on_stack(&exp_timer);
	exp_timer.expires = jiffies + 1 * HZ;
	exp_timer.function = (void *)check_button;
	//exp_timer.data = NULL;

	//Bat dau timer
	add_timer(&exp_timer);
	return 0;
address_gpioa_pull_fail:
	iounmap(address_gpioa);
address_gpioa_fail:
	return -1;
}

static void __exit check_event_timer_exit(void)
{
	printk("END!\n");
	iounmap(address_gpioa);
	iounmap(address_gpioa_pull);
}

module_init(check_event_timer_init);
module_exit(check_event_timer_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR(AUTHOR);
