#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc , char *argv[])
{

	char *s = (char *) malloc(sizeof(char) *100);
	int i = 0,j = 0 ;
	for ( i = 1 ; i < argc ; i ++)
	{

		if(argv[i][0] == '-')
		for(j = 1 ; j < strlen(argv[i]); j++)
			{
				switch(argv[i][j]){
					case 'l': strcat(s,"full property\n");break;
					case 'a': strcat(s,"hien thi file an\n");break;
					default : strcpy(s,"incorrect flag");break;break;
				}
			}
	}
	puts(s);
	free(s);
	return 0;
}
