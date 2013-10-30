#/bin/bash
# Script to extract .bam from SRR*.sam files against genome then sort, index, idxstats, and view to sort by chromosomes.  

samtools view -bST /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa SRR497713_BWA.sam > /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.bam
samtools sort /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.bam /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.sorted
samtools index /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.sorted.bam
samtools idxstats /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.bam
samtools view /home/mfbx9mp5/scratch/SchneiderMapped/SRR497713_BWA/SRR497713_BWA.bam 'chr2'