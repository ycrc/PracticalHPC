#!/bin/bash

#SBATCH --array=0-9
#SBATCH --job-name=tasks.sh
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=robert.bjornson@yale.edu
#SBATCH --ntasks=1

/ysm-gpfs/apps/software/dSQ/0.92/dSQBatch.py tasks.sh
