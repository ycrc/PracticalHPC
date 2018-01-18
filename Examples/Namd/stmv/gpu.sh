#!/bin/bash

#SBATCH -p scavenge,gpu -c 20 -t 24:00:00 --gres=gpu:4 --gres-flags=enforce-binding

module load Apps/NAMD/2.11-multicore-CUDA

namd2 +idlepoll +ppn $SLURM_CPUS_ON_NODE stmv.namd 

