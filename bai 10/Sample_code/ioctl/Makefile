#CROSS_COMPILE=aarch64-linux-gnu-
CC=$(CROSS_COMPILE)gcc
KERN_DIR=/home/tungnt58/workspace/testcase/vision/linux
#ARCH=arm64

#CC=gcc
obj-m:=reboot_mod.o

#obj-m:=hello.o
all:
	make -C $(KERN_DIR) M=$(PWD) modules
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	$(CC) reboot.c -o reboot
clean:
	make -C $(KERN_DIR) M=$(PWD) clean
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm reboot
