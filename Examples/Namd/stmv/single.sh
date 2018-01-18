#!/bin/bash

#SBATCH -c 1 

module load Apps/NAMD/2.11-multicore

namd2 +ppn $SLURM_CPUS_ON_NODE stmv.namd 
