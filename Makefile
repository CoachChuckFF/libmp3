.PHONY: all
	all : mp3 link

mp3 : mp3.cpp mp3.h mp3frame.cpp mp3frame.h
	gcc -g -c -fpic mp3.cpp -Wall -Werror
	gcc -g -c -fpic mp3frame.cpp -Wall -Werror
	gcc -g -shared -Wl,-soname,libmp3.so -o libmp3.so -lm mp3.o mp3frame.o

link : mp3 mp3.o mp3frame.o
	gcc -g -shared -Wl,-soname,libmp3.so -o libmp3.so -lm mp3.o mp3frame.o
						
.PHONY: clean
clean :
	rm -f libmp3.so *.o *~
