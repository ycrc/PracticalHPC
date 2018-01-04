#!/bin/bash
#SBATCH -c 8
#SBATCH --mem-per-cpu=12g

module load R
R CMD BATCH parboot.R
