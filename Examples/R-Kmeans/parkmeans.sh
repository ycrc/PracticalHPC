#!/bin/bash

#SBATCH -C westmere
#SBATCH -c 8 
#SBATCH -t 3:00

module load R
R --slave -f parkmeans.R

