#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
int g_argc ;
char **g_argv;

int getStringPassing(char *str  , char *arguments)
{
	int i , t ; 
	i = t = 0 ; 
	while( str[t] !='\"' ) 
	{
		t ++;
	}
	//jump over " character 
	t++;
	i = 0 ; 
	while( str[t] !='\"' && str[t]!= '\0') 
	{
		if( str[t] == '$' && isdigit(str[t+1]))
		{
			int num = str[t+1] - 48, k = 0 ;
			if ( num >= g_argc )
				{
					return -2;
				}
			
			while(g_argv[num][k] != '\0')
			{
				arguments[i] = g_argv[num][k];
				i+=1;
				k+=1;
			}
			t = t + 2;
		}
		else 
			{
				arguments[i] = str[t] ;
				i++;
				t++;
			}
	}
	arguments[i] = '\0';
}
int getCmd(char *str , char *cmd)
{
	int t  = 0 ,i = 0 ; 
	if ( strlen(str) <=  1)
	{
		return -1;
	}
	while( str[t] != ' ' && str[t] != '\0') 
	{
		cmd[t] = str[t] ;
		t++;
	}
	cmd[t] = '\0';
	return 0;
}
int processing(const char *name_file) {

	FILE *fp ; 
	char c;
	char line [200];
	char cmds[10];
	char arguments[100];
	int index = 0 ; 
	if (( fp = fopen(name_file, "r")) == NULL)
	{
		perror("fopen");
		return -1;
	}
	while( (c = fgetc(fp)) != EOF)
	{
		if ( c == '\n')
		{
			line[index] = '\0';
			if( index > 1 ) 
				// if not is command
				if( line[0] != '#')
				{
					
					if( getCmd(line,cmds) == 0 ) 
					{
						if(!strcmp(cmds, "echo"))
						{
							if ( getStringPassing(line,arguments) == -2) 
							{
								fprintf(stderr , "\nerror missing  argument\n");
								return -1;
							}
							puts(arguments);
						}
					}
					else {

						// more code  for other command 

					}
				}

			index = 0;
		}
		else
		line[index++] = c;
	}
	fclose(fp);
	return 0;
}
int main(int argc , char*argv[])
{
	int d ; 
	g_argc  =argc;
	g_argv = argv;
	processing(argv[1]);
	scanf("%d" , &d);

	return 0;
}
