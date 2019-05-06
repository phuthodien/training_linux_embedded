description :
	create device file in /dev directory with several operation( read , write ,open , close) 
	device path : /dev/my_chd_file0
	user can open , read ,.. to device file , and review log in kernel with "dmesg" command

how to run ?
	1. make all
	2. sudo echo "hello" > /dev/my_chd_file0 
	3. check log with : dmesg | tail

