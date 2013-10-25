#BWA mapping from the DCC Directory
#/home/mqbsscbf/scratch/flyNGS/DCC/
#Edited From Danny's Github mappability folder. 
#https://github.com/bergmanlab/florence/blob/master/scripts/mapping/bwa-aln-full-composite.sh

inputdir="/mnt/lustre/scratch/mqbsscbf/flyNGS/DCC/"
outputdir="~/DCCMapped/"
ref="/mnt/lustre/scratch/mqbsscbf/Ref_Files/Composite/composite.fa"


#for input in $inputdir/*.fastq.gz
for input in $inputdir/*.fastq.gz
do 
 #echo $input
 sample=`basename $input .fastq.gz`
 
 input1="$inputdir/${sample}.fastq.gz"
 output1="$outputdir/${sample}.sai"
 outputERROR="$outputdir/${sample}_aln1.E"
 outputQ="$outputdir/${sample}_aln1.Q"
 echo "Submitting job for $input"
 qsub -V -q smp.q -b y -cwd -o /dev/null -e /dev/null -N aln_${sample}_1 "/usr/bin/bwa aln -t 12 -q 20 $ref $input1 > $output1"


 BAM="$outputdir/${sample}"

 outputERROR="$outputdir/${sample}_sampe.E"
 outputQ="$outputdir/${sample}_sampe.Q"
 qsub -V -q smp.q -b y -cwd -o $outputQ -e $outputERROR -N bam_${sample} -hold_jid aln_${sample} "/usr/bin/bwa samse $ref $output1 $input1 | samtools view -Shu - | samtools sort - $BAM"

 qsub -V -q serial.q -b y -cwd -o /dev/null -e /dev/null -N rm_${sample} -hold_jid bam_$sample "rm $output1"
 
done