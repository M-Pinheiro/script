#!/bin/bash
# Script to run samtools indxstats on Wolbachia +ve and Wolbachia -ve samples to compare against Cell lines test using idxstats output.
# Run this script as sh qsub.

# Wolbachia +ve - SRR834533

samtools sort /mnt/lustre/scratch/mqbpjfg2/Data/hologenome/runs/SRR834533.bam ~/scratch/Wolbachia/SRR834533.sorted.bam
samtools index ~/scratch/Wolbachia/SRR834533.sorted.bam

# Wolbachia -ve - SRR835070

samtools sort /mnt/lustre/scratch/mqbpjfg2/Data/hologenome/runs/SRR835070.bam ~/scratch/Wolbachia/SRR835070.sorted.bam
samtools index ~/scratch/Wolbachia/SRR835070.sorted.bam