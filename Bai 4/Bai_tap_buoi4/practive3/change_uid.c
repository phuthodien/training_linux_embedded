#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc , char *argv[])
{
	if( argc != 3 )
	{
		puts("incorrect argument passing ");
		return -1;
	}
	if( setgid(atoi(argv[1])) != 0)
	{
		puts(argv[1]);
		perror("setgid");
		return -1;
	}
	if( setuid(atoi(argv[2])) != 0)
	{
		puts(argv[2]);
		perror("setuid");
		return -1;
	}
	if( creat("newfile.txt" , 0755) == -1 )
	{
		perror("creat");
		return -1;
	}
	return 0;
}
