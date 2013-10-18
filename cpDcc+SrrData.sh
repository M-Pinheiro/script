# !/bin/bash
#
# Created by Marco Pinheiro - 17/10/13
#
# This a script to copy WGS SRA and DCC data based on Lee et al Publication from two locations on Kadmon
# /home/mqbsscbf/scratch/CellLineNGS/SRA
# /home/mqbsscbf/scratch/CellLineNGS/DCC
#
# This script will only work in Kadmon session
#
# This part will copy files from SRA to ~/scratch/

cd /home/mqbsscbf/scratch/flyNGS/SRA

# D8
cp SRR497729_2.fastq.gz ~/scratch/CellLineNGS

# D20-c2
cp SRR497724_2.fastq.gz ~/scratch/CellLineNGS

# S1
cp SRR497713_2.fastq.gz ~/scratch/CellLineNGS

# mbn2
cp SRR497728_2.fastq.gz ~/scratch/CellLineNGS

# D9
cp SRR497711_2.fastq.gz ~/scratch/CellLineNGS
cp SRR497714_2.fastq.gz ~/scratch/CellLineNGS

# W2
cp SRR497730_2.fastq.gz ~/scratch/CellLineNGS

# D16C3
cp SRR497715_2.fastq.gz ~/scratch/CellLineNGS
cp SRR497710_2.fastq.gz ~/scratch/CellLineNGS

# S2R+
cp SRR497719_2.fastq.gz ~/scratch/CellLineNGS
cp SRR497722_2.fastq.gz ~/scratch/CellLineNGS

# OregonR
cp SRR497727_2.fastq.gz ~/scratch/CellLineNGS

# D4-C1
cp SRR497727_2.fastq.gz ~/scratch/CellLineNGS

# Cl8+
cp SRR497726_2.fastq.gz ~/scratch/CellLineNGS

# D20-c5
cp SRR497723_2.fastq.gz ~/scratch/CellLineNGS
cp SRR497718_2.fastq.gz ~/scratch/CellLineNGS

# L1
cp SRR497712_2.fastq.gz ~/scratch/CellLineNGS

# Sg4
cp SRR497720_2.fastq.gz ~/scratch/CellLineNGS

# D17-C3
cp SRR497725_2.fastq.gz ~/scratch/CellLineNGS

# S3
cp SRR497721_2.fastq.gz ~/scratch/CellLineNGS

# 1182-4H
cp SRR497717_2.fastq.gz ~/scratch/CellLineNGS

# This will copy files from DCC to ~/scratch/CellLineNGS/

cd /home/mqbsscbf/scratch/flyNGS/DCC

# S2-DRSC
cp 2551_DM16.fastq.gz ~/scratch/CellLineNGS
cp 2551_DM22.fastq.gz ~/scratch/CellLineNGS

# CME W1 Cl.8+
cp 3201_DM57.fastq.gz ~/scratch/CellLineNGS
cp 3201_DM58.fastq.gz ~/scratch/CellLineNGS

# Kc167
cp 2552_DM14.fastq.gz ~/scratch/CellLineNGS
cp 2552_DM25.fastq ~/scratch/CellLineNGS

# ML-DmBG3-c2
cp 2553_DM15.fastq.gz ~/scratch/CellLineNGS
cp 2553_DM26.fastq.gz ~/scratch/CellLineNGS