.PHONY:clean all

FLAGS:=-pthread -g
all :server_sample.c client_sample.c
	gcc $(FLAGS) server_sample.c -o s 
	gcc $(FLAGS) client_sample.c -o c 

*.o:*.c
	gcc -c  $< -o $@
clean:
	rm -f *.o

