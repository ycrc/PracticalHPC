#!/bin/bash

#SBATCH -c 20
#SBATCH -t 3:00

#edit following line to put the appropriate module
#module load NAMD/2.12-multicore

namd2 +ppn $SLURM_CPUS_ON_NODE stmv.namd 
