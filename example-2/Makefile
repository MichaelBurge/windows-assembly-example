all: main.exe

derp.o: derp.asm
	as derp.asm -o derp.o

main.o: main.asm
	as main.asm -o main.o

main.exe: main.o derp.o
	g++ derp.o main.o -o main.exe

main.s: main.cpp
	g++ -O3 main.cpp -fomit-frame-pointer -fno-exceptions -S
