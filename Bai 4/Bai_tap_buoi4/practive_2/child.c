#include <stdio.h>

int main(int argc , char *argv[])
{
	FILE *fp;
	if ( argc != 2 ) 
	{
		puts("incorrect pass argument");
		return -1;
	}
	fp = fopen(argv[1] , "w");

	fputs("hello world", fp);
	
	fclose(fp);

	return 0;
}
