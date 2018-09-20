#!/bin/bash

#SBATCH -c 1 

module load NAMD/2.12-multicore

namd2 stmv.namd 
