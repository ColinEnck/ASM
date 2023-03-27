main: main.asm
	as main.asm -o main.o --32
	gcc main.o -o main -g -m32 -nostdlib
