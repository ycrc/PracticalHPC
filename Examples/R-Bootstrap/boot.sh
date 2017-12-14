#!/bin/bash
#SBATCH -c 8

module load R
R CMD BATCH boot.R
