#!/bin/bash

#This script outputs the Quality statistics of the reads using FastQC.
#Copy the following line as many times as the number of samples you are working with, then
#replace "YOURFILE" with the names of your samples e.g. "SRR12345":
#fastQC module needs to first be loaded, load cmd included in script

module load apps/fastqc 
cd ~/scratch/CellLineNGS

# D8
fastqc --noextract -o home/mqbsscbf/scratch/flyNGS/SRA/SRR497729_2.fastq.gz ~/scratch/QualityStats/SRR497729_2.fastq.gz

# D20-c2
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497724_2.fastq.gz

# S1
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497713_2.fastq.gz

# mbn2
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497728_2.fastq.gz

# D9
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497711_2.fastq.gz SRR497714_2.fastq.gz

# W2
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497730_2.fastq.gz

# D16C3
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497715_2.fastq.gz SRR497710_2.fastq.gz

# S2R+
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497719_2.fastq.gz SRR497722_2.fastq.gz
 
# OregonR
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497727_2.fastq.gz

# D4-C1
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497727_2.fastq.gz

# Cl8+
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497726_2.fastq.gz

# D20-c5
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497718_2.fastq.gz SRR497723_2.fastq.gz

# L1
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497712_2.fastq.gz 

# Sg4
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497720_2.fastq.gz 

# D17-C3
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497725_2.fastq.gz 

# S3
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497721_2.fastq.gz 

# 1182-4H 
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats SRR497717_2.fastq.gz 

# S2-DRSC
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats 2551_DM16.fastq.gz 2551_DM22.fastq.gz 

# CME W1 Cl.8+
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats 3201_DM57.fastq.gz 3201_DM58.fastq.gz

# Kc167
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats 2552_DM14.fastq.gz 2552_DM25.fastq.gz 

# ML-DmBG3-c2
fastqc --noextract -o ~/scratch/CellLineNGS/QualityStats 2553_DM15.fastq.gz 2553_DM26.fastq.gz