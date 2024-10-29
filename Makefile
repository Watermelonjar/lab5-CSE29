all: number_server


number_server : number-server.c
	gcc -std=c11 -Wall -Wno-unused-variable -fsanitize=address -g number-server.c http-server.c http-server.h -o number-server

clean:
	rm -f number_server
