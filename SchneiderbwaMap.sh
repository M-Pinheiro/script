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

# S1 SRR497713_1 SRR497713_2
echo "S1 BWA Mapping to reference SRR497713_1"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497713_1.fastq.gz > ~/scratch/SchneiderMapped/SRR497713_1_BWA.sai
 
echo "S1 BWA Mapping to reference SRR497713_2"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497713_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497713_2_BWA.sai

echo "S1 BWA sampe"

bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/scratch/SchneiderMapped/SRR497713_1_BWA.sai ~/scratch/SchneiderMapped/SRR497713_2_BWA.sai /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497713_1.fastq.gz /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497713_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497713_BWA.sam

# S2R+ SRR497719_1 SRR497719_2 SRR497722_1 SRR497722_2

# S2R+ SRR497719_1 SRR497719_2
echo "S2R+ BWA Mapping to reference SRR497719_1"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497719_1.fastq.gz > ~/scratch/SchneiderMapped/SRR497719_1_BWA.sai
 
echo "S2R+ BWA Mapping to reference SRR497719_2"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497719_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497719_2_BWA.sai

echo "S2R+ BWA sampe"

bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/scratch/SchneiderMapped/SRR497719_1_BWA.sai ~/scratch/SchneiderMapped/SRR497719_2_BWA.sai /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497719_1.fastq.gz /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497719_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497719_BWA.sam

# S2R+ SRR497722_1 SRR497722_2
echo "S2R+ BWA Mapping to reference SRR497713_1"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497722_1.fastq.gz > ~/scratch/SchneiderMapped/SRR497722_1_BWA.sai
 
echo "S2R+ BWA Mapping to reference SRR497713_2"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497722_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497722_2_BWA.sai

echo "S2R+ BWA sampe"

bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/scratch/SchneiderMapped/SRR497722_1_BWA.sai ~/scratch/SchneiderMapped/SRR497722_2_BWA.sai /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497722_1.fastq.gz /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497722_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497722_BWA.sam

# S3 SRR497721_1 SRR497721_2
echo "S3 BWA Mapping to reference SRR497721_1"

qsub -V -q serial.q -b y -cwd -o ~/scratch/ -e ~/scratch/ -N /usr/bin/bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497721_1.fastq.gz > ~/scratch/SchneiderMapped/SRR497721_1_BWA.sai
 
echo "S3 BWA Mapping to reference SRR497721_2"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497721_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497721_2_BWA.sai

echo "S3 BWA sampe"

bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/scratch/SchneiderMapped/SRR497721_1_BWA.sai ~/scratch/SchneiderMapped/SRR497721_2_BWA.sai /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497721_1.fastq.gz /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497721_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497721_BWA.sam

# Sg4 SRR497720_1 SRR497720_2 

echo "Sg4 BWA Mapping to reference SRR497720_1"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497720_1.fastq.gz > ~/scratch/SchneiderMapped/SRR497720_1_BWA.sai
 
echo "Sg4 BWA Mapping to reference SRR497720_2"

bwa aln -t 12 /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497720_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497720_2_BWA.sai

echo "Sg4 BWA sampe"

bwa sampe /mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa ~/scratch/SchneiderMapped/SRR497720_1_BWA.sai ~/scratch/SchneiderMapped/SRR497720_2_BWA.sai /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497720_1.fastq.gz /mnt/lustre/scratch/mqbsscbf/flyNGS/SRA/SRR497720_2.fastq.gz > ~/scratch/SchneiderMapped/SRR497720_BWA.sam

rm ~/scratch/SchneiderMapped/*.sai

echo "BWA alignment script finished"
