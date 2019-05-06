#include <stdio.h>
#include <unistd.h>

int main(){
	
	printf("sension id  of A %d " ,getsid(0));
	return 0;
}
