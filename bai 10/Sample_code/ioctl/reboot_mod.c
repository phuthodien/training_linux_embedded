#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/device.h>
#include <linux/io.h>
#include <linux/reboot.h>
#include <linux/delay.h>
#include <linux/uaccess.h>
#include <linux/string.h>

#define MAGIC_NO		100
#define SET_SHUT_CMD		_IOW(MAGIC_NO, 0, char*)
#define SET_SHUT_TIME		_IOW(MAGIC_NO, 1, int)

MODULE_AUTHOR("TUNG<tungnt58@fsoft.com.vn>");
MODULE_LICENSE("GPL");
MODULE_VERSION("0.1");

static struct class *class_name;
static struct device *device_name;
static struct cdev my_cdev;
static dev_t dev;

static int dev_open(struct inode *, struct file *);
static int dev_close(struct inode *, struct file *);
static long dev_ioctl(struct file *, unsigned int, unsigned long);


static const struct file_operations fops = {
	.open = dev_open,
	.release = dev_close,
	.unlocked_ioctl = dev_ioctl,
};


static int dev_open(struct inode *inodep, struct file *filep)
{
	pr_info("open is called\n");
	return 0;
}

static int dev_close(struct inode *inodep, struct file *filep)
{
	pr_info("close is called\n");
	return 0;
}

static long dev_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
	void __user *argp = (void __user *)arg;
	char __user *value = argp;
	char buf[10];
	int get_val;

	switch (cmd) {
	case SET_SHUT_CMD:
		sprintf(buf, "%s", value);
		pr_info("from ioctl: get from user: %s\n", buf);
		if (!strcmp(buf, "now")) {
			msleep(20);
			kernel_restart(NULL);
		} else
			pr_info("get wrong from user\n");
		break;

	case SET_SHUT_TIME:
		get_user(get_val, value);
		pr_info("from ioctl 2: get from user: %d\n", get_val);
		msleep(get_val*1000);
		kernel_restart(NULL);
		break;

	default:
		return -ENOTTY;
	}

	return 0;
}

static int __init exam_init(void)
{
	int ret;

	ret = alloc_chrdev_region(&dev, 0, 1, "reboot");
	if (ret) {
		pr_info("Can not register major number\n");
		goto fail_reg;
	}
	pr_info("Register successfully major no is %d\n", MAJOR(dev));

	cdev_init(&my_cdev, &fops);
	my_cdev.owner = THIS_MODULE;
	my_cdev.dev = dev;

	ret = cdev_add(&my_cdev, dev, 1);

	if (ret < 0) {
		pr_info("cdev_add error\n");
		return ret;
	}

	class_name = class_create(THIS_MODULE, "reboot");
	if (IS_ERR(class_name)) {
		pr_info("create class failed\n");
		goto fail_reg;
	}
	pr_info("create successfully class\n");

	device_name = device_create(class_name, NULL, dev, NULL, "reboot");
	if (IS_ERR(device_name)) {
		pr_info("Create device failed\n");
		goto dev_fail;
	}
	pr_info("create device success\n");
	return 0;
dev_fail:
	cdev_del(&my_cdev);
	class_destroy(class_name);
fail_reg:
	return -ENODEV;

}

static void __exit exam_exit(void)
{
	pr_info("goodbye\n");
	cdev_del(&my_cdev);
	device_destroy(class_name, dev);
	class_destroy(class_name);
	unregister_chrdev_region(dev, 1);
}

module_init(exam_init);
module_exit(exam_exit);
