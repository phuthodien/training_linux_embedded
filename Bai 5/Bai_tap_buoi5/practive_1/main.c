#include <stdio.h>
#include <signal.h>

void sig_handler(int sig)
{
	if( sig == 9)
	{
		puts("hello world");
	}
}
int main()
{
	signal(9 , sig_handler);

	while(1);
	return 0;
}
