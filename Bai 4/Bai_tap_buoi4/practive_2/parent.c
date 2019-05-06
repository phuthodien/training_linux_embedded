#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>


int main(int argc , char *argv[])
{
	int pid , status;

	if ( argc != 2 ) 
	{
		puts("incorrect pass argument");
		return -1;
	}
	if( (pid = fork()) <0)
	{
		perror("fork");
		return -2;
	}
	else if ( pid == 0 ) 
	{
		if (execl("./ch" , "./ch" , argv[1] , (char*)0) == -1) 
			perror("execl");
	}
	else {
		wait(&status);
		printf("status : %s\n" , (status == 0) ? "ok" : "fail");
	}

	return 0;
}
