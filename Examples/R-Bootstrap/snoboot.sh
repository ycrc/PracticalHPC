#!/bin/bash
#SBATCH -c 8 
#SBATCH --mem-per-cpu=12g

module load Rpkgs/RMPI/0.6.3 Rpkgs/SNOW
R CMD BATCH snoboot.R
