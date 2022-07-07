dir=./io/
files=io

io=$(dir)$(files)


all:
	as $(io).s -o $(io).o
	ld -s $(io).o -o $(io)

