#!/bin/bash

# Script to run samtools indxstats on Wolbachia +ve and Wolbachia -ve samples to compare against Cell lines test using idxstats output.
# Run this script as qsub.

# S1 SRR497713_BWA
# S2R+ SRR497719_BWA 
# S2R+ SRR497722_BWA
# S3 SRR497721_BWA
# Sg4 SRR497720_BWA

#############################
# Single-End - Mapped separately in DCC mapping
#S2-DSRC 2551_DM16 2551_DM22
#############################

#location /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/

# S1 SRR497713_BWA

samtools sort /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/SRR497713_BWA.bam ~/scratch/Wolbachia/SRR497713_BWA.sorted.bam
samtools index ~/scratch/Wolbachia/SRR497713_BWA.sorted.bam

# S2R+ SRR497719_BWA 

samtools sort /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/RR497719_BWA.bam ~/scratch/Wolbachia/RR497719_BWA.sorted.bam
samtools index ~/scratch/Wolbachia/RR497719_BWA.sorted.bam

# S2R+ SRR497722_BWA

samtools sort /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/SRR497722_BWA.bam ~/scratch/Wolbachia/SRR497722_BWA.sorted.bam
samtools index ~/scratch/Wolbachia/SRR497722_BWA.sorted.bam

# S3 SRR497721_BWA

samtools sort /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/SRR497721_BWA.bam ~/scratch/Wolbachia/SRR497721_BWA.sorted.bam
samtools index ~/scratch/Wolbachia/SRR497721_BWA.sorted.bam

# Sg4 SRR497720_BWA

samtools sort /mnt/lustre/scratch/mfbx9mp5/SchneiderMapped/SRR497721_BWA.bam ~/scratch/Wolbachia/SRR497721_BWA.sorted.bam
samtools index ~/scratch/Wolbachia/SRR497721_BWA.sorted.bam