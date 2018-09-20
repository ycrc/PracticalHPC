#!/bin/bash
#SBATCH -C westmere
#SBATCH -t 3:00

module load R
R --slave -f kmeans.R

