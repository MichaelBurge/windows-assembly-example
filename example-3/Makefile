all: main.exe

main.o: main.asm
	as main.asm -o main.o

main.exe: main.o
	g++ main.o -o main.exe

main.s: main.cpp
	g++ -O0 main.cpp -fomit-frame-pointer -fno-exceptions -S
