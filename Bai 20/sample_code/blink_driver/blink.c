#include <linux/types.h>
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/module.h>
#include <linux/version.h>
#include <linux/device.h>
#include <linux/cdev.h>
#include <linux/uaccess.h>
#include <linux/gpio.h>
#include <linux/slab.h>

static dev_t dev_num;
static struct cdev my_cdev;
static struct device *dev;
static struct class *cls;
static unsigned int gpio_led = 102;
static char *msg = NULL;
static unsigned int cnt = 0;

static int dev_open(struct inode *inode, struct file *fp)
{
	cnt++;
	printk(KERN_INFO "Handle opend event (%d)\n", cnt);
	return 0;
}

static int dev_close(struct inode *inode, struct file *fp)
{
	printk(KERN_INFO "Driver: close()\n");
	return 0;
}

static ssize_t dev_read(struct file *fp, char __user *buf, size_t len, loff_t *off)
{
	char led_value;
	short count;

	led_value = gpio_get_value(gpio_led);
	msg[0] = led_value;
	len = 1;

	count = copy_to_user(buf, msg, len);
	printk("gpio_led=%d\n", gpio_get_value(gpio_led));;
	return 0;
}

static ssize_t dev_write(struct file *fp, const char __user *buf, size_t len, loff_t *off)
{
	short count;

	memset(msg, 0, strlen(msg));
	count = copy_from_user(msg, buf, len);

	if (msg[0] == '1')
	{
		gpio_set_value(gpio_led, 1);
	}
	else if (msg[0] == '0')
	{
		gpio_set_value(gpio_led, 0);
	}
	else
	{
		printk(KERN_INFO "Unknown command, 1 or 0\n");
	}
	printk(KERN_INFO "Driver: write()\n");
	return len;
}

static struct file_operations fops =
{
	.owner = THIS_MODULE,
	.open = dev_open,
	.release = dev_close,
	.read = dev_read,
	.write = dev_write
};

static int __init udoo_init(void)
{
	int ret;

	printk(KERN_INFO "Registered udoo_led!\n");
	ret = alloc_chrdev_region(&dev_num, 0, 1, "blink");
	if (ret < 0)
	{
		printk(KERN_INFO "Failed to alloc_chrdev_region!\n");
		return -EFAULT;
	}

	cls = class_create(THIS_MODULE, "blink_class");
	if (IS_ERR(cls))
	{
		printk(KERN_INFO "Failed to create class device!\n");
		unregister_chrdev_region(dev_num, 1);
		return -EFAULT;
	}

	dev = device_create(cls, NULL, dev_num, NULL, "blink");
	if (IS_ERR(dev))
	{
		printk(KERN_INFO "Failed to create the device!\n");
		class_destroy(cls);
		return -EFAULT;
	}

	cdev_init(&my_cdev, &fops);
	ret = cdev_add(&my_cdev, dev_num, 1);
	if (ret < 0)
	{
		printk(KERN_INFO "Failed to add cdev!\n");
		device_destroy(cls, dev_num);
		return ret;
	}

	msg = (char *)kmalloc(32, GFP_KERNEL);
	if (msg != NULL)
	{
		printk(KERN_INFO "malloc allocator address: 0x%p\n", msg);
	}

	printk(KERN_INFO "GPIO_TEST: Initializing the GPIO_TEST\n");
	
	if (gpio_is_valid(gpio_led) < 0)
	{
		printk(KERN_INFO "GPIO_TEST: invalid LED GPIO\n");
		return -1;
	}

	if (gpio_request(gpio_led, 0) < 0)
	{
		printk(KERN_INFO "GPIO_TEST: gpio_request error!\n");
		return -1;
	}

	gpio_direction_output(gpio_led, 0);

	return 0;
}

static void __exit udoo_exit(void)
{
	gpio_set_value(gpio_led, 0);
	gpio_free(gpio_led);
	if (msg)
	{
		kfree(msg);
	}
	cdev_del(&my_cdev);
	device_destroy(cls, dev_num);
	class_destroy(cls);
	unregister_chrdev_region(dev_num, 1);
	printk(KERN_INFO "Unregisterd chrdev\n");
}

module_init(udoo_init);
module_exit(udoo_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Thanh");
MODULE_DESCRIPTION("Udoo led blink example");

