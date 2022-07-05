io=./io/io

all:
	as $(io).s -o $(io).o
	ld -s $(io).o -o $(io)
