#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
	int fd , pid ; 	
	char *parent_chr = "i 'am parent\n";
	char *child_chr = "i 'am child\n";
	fd = open("sample.txt" , O_RDWR| O_CREAT);

	if( (pid = fork()) > 0) 
	{
		write(fd , parent_chr , sizeof(parent_chr)); 
	}
	else if( pid == 0) 
	{
		write(fd , child_chr , sizeof(child_chr)); 
	}
	close(fd);
	return 0;
}
