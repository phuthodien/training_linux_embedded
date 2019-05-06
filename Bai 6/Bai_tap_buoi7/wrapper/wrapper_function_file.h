#include <stdio.h>
#include <pthread.h>
static char *name_file = "wrapper_file_function.txt";
static FILE *fp;
pthread_mutex_t lock;



int open_file();
int read_file(char *buffer , int nsize);
int write_file(char *buffer , int nsize);
int destroy_wrapper();
