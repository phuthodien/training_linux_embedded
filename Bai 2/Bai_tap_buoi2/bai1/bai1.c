#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>

int main(int argc , char * argv[]){
	char *buffer;
	int fd ; 
	
	printf("program read a file at any point from SET , CUR , END\n");
	if( argc != 4){
		perror("incorrect syntax\n");
		return -1;
	}
	
	buffer = (char *) malloc(100);
	if( (fd = open(argv[1] , O_RDONLY )) )
	{
		lseek(fd, atoi(argv[2]), atoi(argv[3]));
		while(read(fd, buffer, 100) != 0)
			puts(buffer);
	}
	free(buffer);
	return 0;
}
