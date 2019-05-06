obj-m := misc-module.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	gcc read.c -o read
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm -rf read
