#!/bin/bash

#SBATCH --mail-type=all 
#SBATCH -t 10:00

module load BWA/0.7.15-foss-2016a
#module load BWA

sleep 10 # just for demo; to allow time to ssh to allocated node

/usr/bin/time -a bwa mem -t ${SLURM_CPUS_PER_TASK:-1} \
  /ysm-gpfs/datasets/genomes/Homo_sapiens/UCSC/hg38/Sequence/BWAIndex/genome.fa \
  ../GenomePL/data/all.fq > all.sam
