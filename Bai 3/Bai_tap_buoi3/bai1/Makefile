all : 
	gcc -c -Wall -Werror -fPIC shared.c 
	gcc -shared -o libshared.so  shared.o
	#gcc -L./ -Wl,-rpath=/usr/bin -Wall -o test build_dlib.c -lshared
clean:
	rm *.so *.o
