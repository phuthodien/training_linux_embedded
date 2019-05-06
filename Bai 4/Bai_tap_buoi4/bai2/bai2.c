#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	int pid,status;
	
	if ( (pid = fork()) < 0 ) 
	{
		perror("fork");
		return -1;
	}
	// child 
	else if( pid == 0 ) 
	{
		system("ls . > data_list.txt");
	}
	// parent 
	else {
		wait(&status);
		if( status == 0 )
		{
			execl("/bin/cat" , "cat" , "data_list.txt" , (char*)0);	
		}
		else {
			perror("execl");
			return -1;
		}
	}
	return 0;
}

