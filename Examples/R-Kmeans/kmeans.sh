#!/bin/bash
#SBATCH -C westmere

module load R
R --slave -f kmeans.R

