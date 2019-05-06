#include <stdio.h>
#include <pthread.h>
#include "wrapper_function_file.h" 

pthread_t th1 , th2;
void *test(void *st)
{
	char *s = (char *)st;	
	write_file(s, 100);
	return (void*)NULL;
}
int main()
{
	open_file()	;
	pthread_create(&th1 , NULL , test , "vu hai long thread vu hai long thread 1 vu hai long thread 1\n");
	pthread_create(&th2 , NULL , test , "vu hai long thread 2 vu hai long thread 2 vu hai long thread 2\n");


	pthread_join(th1 , NULL);
	pthread_join(th2 , NULL);
	destroy_wrapper();
}
