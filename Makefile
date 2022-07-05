io=./io/

all:
	as $(io)io.s -o $(io)io.o
	ld -s $(io)io.o -o $(io)io
