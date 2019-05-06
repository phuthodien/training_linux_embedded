// C program to demonstrate working of Semaphores 
#include <stdio.h> 
#include <stdlib.h>
#include <time.h>
#include <pthread.h> 
#include <semaphore.h> 
#include <unistd.h> 
#define MAX_NUM_FILE 10

sem_t sem_write;
pthread_mutex_t lock_valid_file;
char files_info[MAX_NUM_FILE] ;

void write_to_file( int n)
{
	int i = 0;
	int ok = 0;
	while(!ok)
	for (i = 0 ; i < n ; i ++)
	{
		pthread_mutex_lock(&lock_valid_file);
		if(files_info[i] == 0)
		{
			files_info[i] = 1;
			ok = 1;
		}
		pthread_mutex_unlock(&lock_valid_file);
		// ghi vao file neu ok o tren 
		if( ok == 1)
		{
			
			char nameFile[30];
			sprintf(nameFile ,"fsemaphore%d.txt" , i);
			FILE *fp  = fopen(nameFile , "a+");

			fprintf( fp , "\n %lu ok write to file %d at %ld \n\n", pthread_self(), i, clock());
			sleep(2);
			files_info[i] = 0;
			fclose(fp);
			break;
		}
	}
}
void* thread(void* arg) 
{
	//wait 
	sem_wait(&sem_write); 

	write_to_file(5);

	sem_post(&sem_write); 
}

int main() 
{
	pthread_t t[10];
	int i = 0, nthread = 9;
	pthread_mutex_init(&lock_valid_file, NULL );
	sem_init(&sem_write, 0, 7); 


	for (i = 0 ; i < nthread ; i ++)
	{
	pthread_create(&t[i],NULL,thread , NULL); 
	}

	for ( i = 0 ; i < nthread ; i ++)
	{
	pthread_join(t[i],NULL); 
	}
	
	pthread_mutex_destroy(&lock_valid_file);
	sem_destroy(&sem_write); 
	puts("ok");
return 0;
}

