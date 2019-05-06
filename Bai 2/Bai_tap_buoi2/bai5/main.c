#include <stdio.h>
extern void foo(void);

int main()
{
    FILE *fp = fopen("/etc/foo.conf", "r");

    if (NULL == fp) {
        printf("No config file");
        return -1;
    }

    fclose(fp);

    foo();
    return 0;
}
