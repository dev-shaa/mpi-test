all: compile clean

compile: cuda
	mkdir -p bin
	mpicc main.c dummy.o -o bin/main -lcudart

cuda:
	nvcc -c dummy.cu -o dummy.o

clean:
	rm dummy.o