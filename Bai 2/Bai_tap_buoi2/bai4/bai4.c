#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>

#define RWRWRW (S_IROTH |S_IWOTH|S_IXOTH| S_IRGRP |S_IWGRP|S_IXGRP | S_IRUSR |S_IWUSR |S_IXUSR) 
int main(int argc , char *argv[]){
	
	char *buff1 = (char *) malloc(100);
	char *buff2 = (char *) malloc(100);
	char *buff3 = (char *) malloc(100);
	char *buff4 = (char *) malloc(100);
	
	if( argc != 2 ) 	
	{
		perror("incorrect format command\n");
		return -1;
	}
	puts("need permission as root to run correct command ");
	sprintf(buff1, "%s/%s", argv[1],"Testfolder");
	sprintf(buff2, "%s/%s", buff1,"Test1");
	sprintf(buff3, "%s/%s", buff1,"efg");
	sprintf(buff4, "%s/%s", buff2,"abc");

	puts(argv[1]);
	puts(buff1);
	puts(buff2);
	puts(buff3);
	puts(buff4);

//	if(mkdir( buff1, (RWRWRW &(~( S_IXUSR	|S_IXGRP| S_IXOTH|S_IWOTH) )))== 0)
	if(mkdir( buff1, 0744) ==0)
	{
		if(mkdir( buff2, (RWRWRW &(~( S_IXUSR|S_IXGRP| S_IXOTH|S_IWOTH) )))==0)
		{
		
			printf("create ok %s\n" , buff4);
			if(creat( buff4, (S_IRUSR | S_IRGRP| S_IROTH)))
			{
				
				printf("create ok %s\n" , buff2);
			}
		}
		if(mkdir( buff3, (RWRWRW &(~(S_IXUSR | S_IXGRP| S_IXOTH|S_IWOTH) )))==0 )
			{
				printf("create ok %s\n" , buff3);
			}
	}
	free(buff1);
	free(buff2);
	free(buff3);
	free(buff4);

	return 0;
}
