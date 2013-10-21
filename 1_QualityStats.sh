#!/bin/bas
#This script outputs the Quality statistics of the reads using FastQC.
#Copy the following line as many times as the number of samples you are working with, then
#replace "YOURFILE" with the names of your samples e.g. "SRR12345":
#fastQC module needs to first be loaded, load cmd included in script
cd /home/mqbsscbf/scratch/flyNGS/SRA/

fastqc --noextract -o ~/scratch/QualityStats/ SRR497729_1.fastq.gz SRR497724_1.fastq.gz SRR497713_1.fastq.gz SRR497728_1.fastq.gz SRR497711_1.fastq.gz SRR497714_1.fastq.gz SRR497730_1.fastq.gz SRR497715_1.fastq.gz SRR497710_1.fastq.gz SRR497719_1.fastq.gz SRR497722_1.fastq.gz SRR497727_1.fastq.gz SRR497716_1.fastq.gz SRR497726_1.fastq.gz SRR497723_1.fastq.gz SRR497718_1.fastq.gz SRR497712_1.fastq.gz SRR497720_1.fastq.gz SRR497725_1.fastq.gz SRR497721_1.fastq.gz SRR497717_1.fastq.gz 