#!/bin/bash

set -e # exit on error
k=2
#genome=/ysm-gpfs/datasets/genomes/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/WholeGenomeFasta/genome.fa
genome=/ysm-gpfs/datasets/genomes/Homo_sapiens/UCSC/hg38/Sequence/WholeGenomeFasta/genome.fa

module load BBMap



for i in $(seq -f "%03g" 3 10) 
do 
    echo "Making file $i of $k"
    randomreads.sh ref=${genome} out=data/reads_$i.fq length=100 reads=50000 adderrors=t snprate=0.01 insrate=0.001 delrate=0.001 subrate=0.001 seed=${i}
done
