#!/bin/bash

#SBATCH -n 40

module load Apps/NAMD/2.11
module load MPI/OpenMPI/1.8.1

charmrun ++mpiexec +p40 /gpfs/apps/hpc/Apps/NAMD/2.11/namd2 stmv.namd

