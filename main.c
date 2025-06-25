#include <stdio.h>
#include <stdlib.h>
#include <mpi/mpi.h>

int main(int argc, char **argv)
{
    MPI_Init(&argc, &argv);

    int rank, size;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    MPI_Comm grid_comm;
    int dims[2] = {0, 0}, periods[2] = {0, 0};

    MPI_Dims_create(size, 2, dims);
    MPI_Cart_create(MPI_COMM_WORLD, 2, dims, periods, 0, &grid_comm);

    MPI_Finalize();

    return 0;
}
