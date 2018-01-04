#!/bin/bash
#SBATCH -N 2 --tasks-per-node=4 --mem-per-cpu=12g

module load Apps/R Rpkgs/RMPI Rpkgs/SNOW
mpirun -n 1 R --slave -f mpiboot.R

