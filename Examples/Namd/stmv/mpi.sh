#!/bin/bash

#SBATCH -n 8 

module load NAMD/2.13-GCC-7.3.0-2.30-OpenMPI-3.1.1

charmrun ++mpiexec /gpfs/apps/hpc/Apps/NAMD/2.11/namd2 stmv.namd

