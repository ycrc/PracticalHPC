#!/bin/bash

#sbatch -c 8

module load REMORA

remora ~/bin/stress -c 4 
