#!/bin/bash

# Script to run samtools indxstats on Wolbachia +ve and Wolbachia -ve samples to compare against Cell lines test using idxstats output.
# Run this script as qsub.

samtools sort /mnt/lustre/scratch/mqbpjfg2/Data/hologenome/runs/SRR4977*.bam ~/scratch/Wolbachia/SRR4977*.sorted
