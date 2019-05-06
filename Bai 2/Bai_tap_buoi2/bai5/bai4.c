#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

#define linkconf "/etc/foo.conf"
#define linkfoolib "/usr/bin/libfoo.so"
#define link4run "/bin/test1"

int copyFile(const char *f1 ,const  char* f2 ){
		
	FILE * fp1 , *fp2 ;	
	char c ; 
	if ( (fp1 =  fopen(f1,"rb")) == NULL  )
	{
		printf("error open file %s\n " , f1);
		return -1;
	}
	if ( (fp2 =  fopen(f2,"wb") )  == NULL)
	{
		printf("error open file %s\n " , f2);
		return -1;
	}

	while(!feof(fp1))
	{
		c = fgetc(fp1);
		//putc(c , stdout);
		fputc(c, fp2);
	}	
	fclose(fp1);
	fclose(fp2);
	return 0;
}
int main(){
	
	int fd ;	
	#if 1
	// step 1 
	if(creat(linkconf,511)  != -1 )
	{
		puts("step 1 create link configure ok");
		//step 2 
		if( (fd = creat(linkfoolib,511)) != -1 )
		{
			if(copyFile("libfoo.so","/usr/bin/libfoo.so") != 0)
			{
				puts("error copyfile libfoo.so");
				return -1;
			}
			puts("step 2 copy libfoo.so to usr/bin  ok");
			//step 3
			if( (fd = creat(link4run,511 )) != -1 )
			{
				
			if(copyFile("test1","/bin/test1") != 0)
				{
					puts("error copy test to bin");
					return -1;
				}
				puts("step 3 copy test to /bin  ok");
			}	
			
		else { puts("error step 2 " ); return -1;}
		}
	else { perror("error : ");; return -1;}
	
	}
	else { perror("error : ");; return -1;}
	#endif
	puts("install successfully !!!");
	
	
	return 0;
}
