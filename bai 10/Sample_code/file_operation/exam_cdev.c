#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/device.h>

static dev_t dev;
static struct cdev *my_cdev;

static int dev_open(struct inode *, struct file *);
static int dev_close(struct inode *, struct file *);
static ssize_t dev_read(struct file*, char __user *, size_t, loff_t *);
static ssize_t dev_write(struct file *, const char __user *, size_t, loff_t *);

static struct file_operations fops = {
	.open = dev_open,
	.release = dev_close,
	.read = dev_read,
	.write = dev_write,
};

static int dev_open(struct inode *inodep, struct file *filep)
{
	printk("open\n");
	return 0;
}
static int dev_close(struct inode *inodep, struct file *filep)
{
	printk("close\n");
	return 0;
}

static ssize_t dev_read(struct file*filep, char __user *buf, size_t len, loff_t *offset)
{
	printk("read\n");
	return 0;
}
static ssize_t dev_write(struct file*filep, const char __user *buf, size_t len, loff_t *offset)
{
	printk("write\n");
	return 0;
}

static int __init exam_init(void)
{
	int ret;

	ret = alloc_chrdev_region(&dev, 0, 1, "example");
	if(ret)
	{
		printk("can not register major no\n");
		return ret;
	}
	printk(KERN_INFO "register successfully major now is: %d\n", MAJOR(dev));
	my_cdev = cdev_alloc();
	my_cdev->owner = THIS_MODULE;
	my_cdev->ops = &fops;
	my_cdev->dev = dev;
	cdev_add(my_cdev, dev, 0);

	return 0;
}

static void __exit exam_exit(void)
{
	printk("goodbye\n");
	unregister_chrdev_region(dev, 0);
	cdev_del(my_cdev);
}

module_init(exam_init);
module_exit(exam_exit);
