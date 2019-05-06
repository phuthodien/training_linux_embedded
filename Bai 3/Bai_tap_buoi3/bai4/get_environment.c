#include <stdio.h>
#include <stdlib.h>

extern char** environ;

int main(){

	printf("home = %s \n",(char *)getenv("HOME"));
	printf("user = %s \n",(char *)getenv("USER"));
	printf("pwd = %s \n",(char *)getenv("PWD"));

return 0;
}
