all: compile

compile:
	mkdir -p bin
	mpicc main.c -o bin/main