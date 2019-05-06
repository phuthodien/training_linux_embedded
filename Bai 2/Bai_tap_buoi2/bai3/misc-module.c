#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/module.h>
#include <linux/uaccess.h>

static struct miscdevice my_dev;

static int dev_open(struct inode *, struct file *);
static int dev_close(struct inode *, struct file *);
static ssize_t dev_read(struct file *, char __user *, size_t, loff_t *);
static ssize_t dev_write(struct file *, const char __user *, size_t, loff_t *);

char *buff = "nguyen thanh tung";

static const struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = dev_open,
	.release = dev_close,
	.read = dev_read,
	.write = dev_write
};

static int dev_open(struct inode *inodep, struct file *filep)
{
	pr_info("open file\n");
	return 0;
}

static int dev_close(struct inode *inodep, struct file *filep)
{
	pr_info("close file\n");
	return 0;
}

static ssize_t dev_read(struct file *filep, char __user *buf, size_t len,
							loff_t *offset)
{
	int ret;

	pr_info("read file\n");
	ret = copy_to_user(buf, buff, strlen(buff));
	if (ret) {
		pr_alert("can not put to user\n");
		return ret;
	}

	pr_info("send %d letter to user\n", (int)strlen(buff));
	return 0;
}

static ssize_t dev_write(struct file *filep, const char __user *buf, size_t len,
							loff_t *offset)
{
	pr_info("write to file\n");
	return 0;
}

static int __init exam_init(void)
{
	int ret;

	my_dev.minor = MISC_DYNAMIC_MINOR;
	my_dev.name = "my_misc_device";
	my_dev.fops = &fops;
	ret = misc_register(&my_dev);
	if (ret)
		return ret;
	pr_info("register succesfully device with minor %d\n", my_dev.minor);
	return 0;
}

static void __exit exam_exit(void)
{
	pr_info("goodbye\n");
	misc_deregister(&my_dev);
}

module_init(exam_init);
module_exit(exam_exit);


MODULE_AUTHOR("TUNG");
MODULE_LICENSE("GPL");
