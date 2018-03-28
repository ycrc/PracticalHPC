#!/bin/bash

#sbatch -c 8

module load REMORA

remora ~/bin/stress -t 60 -c 8 
