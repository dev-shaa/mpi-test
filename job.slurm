#!/bin/bash
#SBATCH -p gpus
#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=1
#SBATCH --gpus-per-task=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:02:00
#SBATCH --output=output.log
#SBATCH --error=error.err
#SBATCH --job-name=test

srun ./bin/main

wait
