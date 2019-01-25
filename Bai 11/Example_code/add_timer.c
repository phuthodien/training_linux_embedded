#include <linux/module.h>
#include <linux/init.h>
#include <linux/kmod.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <asm/param.h>

struct timer_list exp_timer;

static void do_something(unsigned long data)
{
	printk(KERN_INFO "Your timer expired and app has been called\n");
}

static int __init tst_init(void)
{
	int delay = 300;

	printk(KERN_INFO "Init called\n");

	init_timer_on_stack(&exp_timer);

	exp_timer.expires = jiffies + delay * HZ;
	exp_timer.data = 0;
	exp_timer.function = do_something;

	add_timer(&exp_timer);

	return 0;
}

static void __exit tst_exit(void)
{
	del_timer(&exp_timer);  
	printk(KERN_INFO "Exit called\n");
}

module_init(tst_init);
module_exit(tst_exit);

MODULE_LICENSE("GPL");