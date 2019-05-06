#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>

#define FILE	"/dev/my_misc_device"

int main(void)
{
	char buff[20] = "vu hai long";

	memset(buff, 0, 20);
	int fd = open(FILE, O_WRONLY);

	if (fd < 0) {
		perror("open\n");
		exit(1);
	}
	
	write(fd , buff, 20);

	close(fd);
	return 0;
}
