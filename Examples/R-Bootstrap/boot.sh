#!/bin/bash
#SBATCH --mem-per-cpu=12g

module load R
R CMD BATCH boot.R
