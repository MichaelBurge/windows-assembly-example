all: main.exe

derp.o: derp.asm
	yasm -f win64 -o derp.o derp.asm

main.o: main.cpp
	g++ main.cpp -o main.o -c

main.exe: main.o derp.o
	g++ derp.o main.o -o main.exe
