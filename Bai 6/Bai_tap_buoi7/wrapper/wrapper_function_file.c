#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include "wrapper_function_file.h"

int open_file()
{
	if((fp = fopen(name_file , "w+")) == NULL )
	{
		return -1;
	}
	pthread_mutex_unlock(&lock);
}


int read_file(char *buffer , int nsize )
{
	char c ;	
	while(  (  nsize-- ) && ((c = fgetc(fp)) != EOF))
	{
		*buffer = c;
		buffer ++;
	}
	buffer = '\0';
}
int write_file(char *buffer , int nsize)
{
	pthread_mutex_lock(&lock);
	int nsi = strlen(buffer);
	while(nsi --)
	{
		fputc(*buffer , fp);
		buffer ++;
	}
	
	pthread_mutex_unlock(&lock);
}
int destroy_wrapper()
{
	fclose(fp);
	pthread_mutex_destroy(&lock);
}





