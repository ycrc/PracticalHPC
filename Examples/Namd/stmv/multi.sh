#!/bin/bash

#SBATCH -c 20
#SBATCH -t 3:00

module load NAMD/2.13-multicore

namd2 +ppn $SLURM_CPUS_ON_NODE stmv.namd 
