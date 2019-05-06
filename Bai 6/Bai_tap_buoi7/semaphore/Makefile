.PHONY: all cleanall

FLAGS :=-pthread -lrt

all:cleanall main.o 
	gcc -g main.o -o t $(FLAGS)

main.o:main.c
	gcc -g  -c main.c -o $@ 

cleanall:
	rm -f fsemaphore*
	rm -f *.o
