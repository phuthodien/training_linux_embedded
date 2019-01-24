/* Nguyen Thanh Tung <tungnt58@fsoft.com.vn*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <string.h>

#define FILENAME	"/dev/reboot"

#define MAGIC_NO                100
#define SET_SHUT_CMD            _IOW(MAGIC_NO, 0, char*)
#define SET_SHUT_TIME           _IOW(MAGIC_NO, 1, int)

void help(void)
{
	printf("\033[33m------------------------------------------------\n\n");
	printf("- usage:\n\n");
	printf("-\t reboot -n now\n\n");
	printf("-\t reboot -t <time>\n\n");
	printf("-\t ex: reboot -t 2\n\n");
	printf("---------------------------------------------------\033[0m\n");

}

int main(int argc, char *argv[])
{
	int option;
	char *cmd_send = NULL;
	int val_send = 0;
	int fd;

	if (argc == 1) {
		printf("\033[31m!!!Need add options:\033[0m\n");
		printf("\t./reboot -h for help\n");
		exit(-1);
	}

	while ((option = getopt(argc, argv, "hn:t:")) != -1) {
		switch (option) {
		case 'h':
			help();
			exit(-1);
		case 'n':
			cmd_send = optarg;
			printf("value of cmd_send is %s\n", cmd_send);
			break;
		case 't':
			val_send = atoi(optarg);
			break;
		default:
			help();
			exit(-1);
		}
	}

	printf("value of val_send is %d", val_send);

	fd = open(FILENAME, O_RDWR);

	if (fd < 0) {
		perror("open\n");
		exit(-1);
	}
	/*Send command to kernel*/
	if (cmd_send == NULL && val_send != 0) {
		printf("send val_send to kernel\n");
		ioctl(fd, SET_SHUT_TIME, &val_send);
	} else {
		printf("send cmd_send to kernel\n");
		ioctl(fd, SET_SHUT_CMD, cmd_send);
	}

	close(fd);
	return 0;
}
