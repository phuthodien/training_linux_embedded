#include <stdio.h>

#include <stdlib.h>

#include <string.h>

void main(int argc  , char *argv[]){

	FILE *fp ;
	char buf[100], namepro[100]; 
	int pid ; 

	if ( argc == 2) 
	{
	    if(	pid = atoi(argv[1]))
		{
			sprintf(buf, "/proc/%d/cmdline",pid);	
			if( fp = fopen(buf , "r"))
			{
				fgets(namepro , 100 , fp);
				puts(namepro);	
			}
			else 
				printf("don't have %d\n " , pid);
		}
		
		
	}	
	else {
		
		puts("error syntax ");
	}



}
