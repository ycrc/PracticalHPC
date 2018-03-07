#!/bin/bash

#SBATCH -C westmere
#SBATCH -c 8 
module load R
R --slave -f parkmeans.R

