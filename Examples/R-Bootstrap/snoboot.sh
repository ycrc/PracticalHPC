#!/bin/bash
#SBATCH -c 4 
#SBATCH -N 2 
#SBATCH --mem-per-cpu=12g
#SBATCH --mpi=pmi2

module load R
R CMD BATCH snoboot.R
