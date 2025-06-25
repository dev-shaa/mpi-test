#include "dummy.h"
#include <cuda_runtime.h>

#define N 32

void cuda_foo()
{
    float buffer[N];
    float *buffer_dev;
    cudaMalloc((void **)&buffer_dev, N * sizeof(float));
    cudaMemcpy(buffer_dev, buffer, N * sizeof(float), cudaMemcpyHostToDevice);
    cudaFree(&buffer_dev);
}

#undef N
