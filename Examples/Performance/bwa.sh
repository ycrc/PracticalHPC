#!/bin/bash

#SBATCH --mail-type=all 
#SBATCH -t 10:00
#SBATCH -c 4

module load BWA

sleep 10 # just for demo; to allow time to ssh to allocated node

/usr/bin/time -a bwa mem -t ${SLURM_CPUS_PER_TASK:-1} \
  ../Data/BWAIndex/genome.fa \
  ../Data/Reads/all.fq > all.sam
