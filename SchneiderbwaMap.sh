#BWA mapping of Schneiders (S) Cell Lines.
#############################
# Pairs-Ends
# S1 SRR497713_1 SRR497713_2
# S2R+ SRR497719_1 SRR497719_2 SRR497722_1 SRR497722_2
# S3 SRR497721_1 SRR497721_2
# Sg4 SRR497720_1 SRR497720_2 
#############################
# Single-End - Mapped separately in DCC mapping
#S2-DSRC 2551_DM16 2551_DM22
#############################

#Edited From florence's github mappability folder. 
#https://github.com/bergmanlab/florence/blob/master/scripts/mapping/bwa-aln-full-composite.sh

 # S1 SRR497713_1 SRR497713_2
echo S1 BWA Mapping to reference SRR497713_1

qsub -V -q serial.q -b y -cwd -o ~/ -e ~/ -N /usr/bin/bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /home/mqbsscbf/scratch/flyNGS/SRA/SRR497713_1.fastq > ~/SchneiderMapped/SRR497713_1_BWA.sai
 
echo S1 BWA Mapping to reference SRR497713_2

qsub -V -q serial.q -b y -cwd -o ~/ -e ~/ -N /usr/bin/bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /home/mqbsscbf/scratch/flyNGS/SRA/SRR497713_2.fastq > ~/SchneiderMapped/SRR497713_2_BWA.sai

echo S1 BWA sampe

qsub -V -q serial.q -b y -cwd -o ~/ -e ~/ -N /usr/bin/bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/SchneiderMapped/SRR497713_1_BWA ~/SchneiderMapped/SRR497713_2_BWA /home/mqbsscbf/scratch/flyNGS/SRA/SRR497713_1.fastq /home/mqbsscbf/scratch/flyNGS/SRA/SRR497713_2.fastq | samtools view -Shbu - > $BAM"


# S2R+ SRR497719_1 SRR497719_2 SRR497722_1 SRR497722_2
# S3 SRR497721_1 SRR497721_2
# Sg4 SRR497720_1 SRR497720_2 

