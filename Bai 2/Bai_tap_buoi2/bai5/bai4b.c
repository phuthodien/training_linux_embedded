#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>



int main(){

	if(remove("/etc/foo.conf") != 0 )
	{
		perror("error message");
		//printf("%s " , strerror(errno));
		return -1;
	}
	if(remove("/usr/bin/libfoo.so") != 0)
	{
		perror("error message");
		//printf("%s " , strerror(errno));
		return -1;
	}
	if(remove("/bin/test1"))
	{
		perror("error message");
		//printf("%s " , strerror(errno));
		return -1;
	}
	
	puts("uninstall succeessfull");		
	return 0;
}
