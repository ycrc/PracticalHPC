#!/bin/bash

#SBATCH --array 1-22
#SBATCH -c 10 

module load parallel

c=$SLURM_ARRAY_TASK_ID

n=$SLURM_CPUS_PER_TASK

cp bigfile.$c /tmp

parallel -j $n "sleep 10; ./prog {1} {2} {3} /tmp/bigfile.$c > output.${c}_{1}_{2}_{3}" ::: lung heart liver ::: e1 e2 e3 ::: 0.01 0.05

rm /tmp/bigfile.$c
