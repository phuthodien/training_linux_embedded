all:
	gcc -c -Wall -Werror -fpic foo.c
	gcc -shared -o libfoo.so foo.o
	gcc -L./ -Wl,-rpath=/usr/bin -Wall -o test1 main.c -lfoo
clean:
	rm -f test1
	rm *.o *.so
