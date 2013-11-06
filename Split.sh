#!/bin/bash

check_folder () {

dir=$1
if [ "$(ls -A $dir)" ]
 then
 read -p "The output directory is not empty, existing files might be overwritten do you wish to continue anyway? (Y or n)" -n 1 -r
 echo    # (optional) move to a new line
 if [[ $REPLY =~ ^[Nn]$ ]]
  then
  exit 1
 elif [[ $REPLY =~ ^[Yy]$ ]]
  then
  go=1
 fi
else
 go=1
fi

}

FILES="/mnt/lustre/scratch/mfxbx9mp5/SchneiderMapped/*.bam"


#######for the wol chromosome###########
for TARGET in wol 
do
outputdir="/mnt/lustre/scratch/mfxbx9mp5/SchneiderMapped/$TARGET"

 if [ ! -d $outputdir ]
 then
 mkdir -p $outputdir
 fi


check_folder $outputdir

if [[ $go == "1" ]]
then

 for input in $FILES
 do
  name=`basename $input .bam`
  #name=`echo $input | egrep -o '[^/]*$'`
  output="$outputdir/$name.bam"
  outputERROR="$outputdir/$name.E"
  outputQ="$outputdir/$name.Q"
  echo "Submitting job for $name"
  qsub -V -q serial.q -b y -cwd -o $outputQ -e $outputERROR -N ${name}_wol "samtools view -h $input | awk '(\$3 == \"w_pipientis\" || \$2 == \"SN:w_pipientis\" || \$2 == \"ID:bwa\")' | samtools view -o $output -bS -"
  name2="${name}_sort"  
  output2="$outputdir/${name}_sorted"
  outputERROR2="$outputdir/${name}_sorted.E"
  outputQ2="$outputdir/${name}_sorted.Q"
  qsub -V -q serial.q -b y -cwd -o $outputQ2 -e $outputERROR2 -N ${name2}_wol -hold_jid ${name}_wol "samtools sort $output $output2" 
 done
 go=0
fi
done

########for the mtDNA chromosome###########
for TARGET in mtDNA 
do
outputdir="/mnt/lustre/scratch/mfxbx9mp5/SchneiderMapped/$TARGET"

 if [ ! -d $outputdir ]
 then
 mkdir -p $outputdir
 fi


check_folder $outputdir

if [[ $go == "1" ]]
then

 for input in $FILES
 do
  name=`basename $input .bam`
  #name=`echo $input | egrep -o '[^/]*$'`
  output="$outputdir/$name.bam"
  outputERROR="$outputdir/$name.E"
  outputQ="$outputdir/$name.Q"
  echo "Submitting job for $name"
  qsub -V -q serial.q -b y -cwd -o $outputQ -e $outputERROR -N ${name}_mt "samtools view -h $input | awk '(\$3 == \"chrM_iso1\" || \$2 == \"SN:chrM_iso1\" || \$2 == \"ID:bwa\")' | samtools view -o $output -bS -"
  name2="${name}_sort"  
  output2="$outputdir/${name}_sorted"
  outputERROR2="$outputdir/${name}_sorted.E"
  outputQ2="$outputdir/${name}_sorted.Q"
  qsub -V -q serial.q -b y -cwd -o $outputQ2 -e $outputERROR2 -N ${name2}_mt -hold_jid ${name}_mt "samtools sort $output $output2" 
 done
 go=0
fi
done

########for the Dmel chromosomes###########
for TARGET in Dmel
do
outputdir="/mnt/lustre/scratch/mfxbx9mp5/SchneiderMapped/$TARGET"

 if [ ! -d $outputdir ]
 then
 mkdir -p $outputdir
 fi


check_folder $outputdir

if [[ $go == "1" ]]
then

 for input in $FILES
 do
  name=`basename $input .bam`
  #name=`echo $input | egrep -o '[^/]*$'`
  output="$outputdir/$name.bam"
  outputERROR="$outputdir/$name.E"
  outputQ="$outputdir/$name.Q"
  echo "Submitting job for $name"
  qsub -V -q serial.q -b y -cwd -o $outputQ -e $outputERROR -N ${name}_dmel "samtools view -h $input | awk '(\$3 ~ /chr\w+/ || \$2 ~ /SN:chr\w+/ || \$2 == \"ID:bwa\" && \$3 !~ /chrM\w+/ && \$2 !~ /SN:chrM\w+/)' | samtools view -o $output -bS -"
  name2="${name}_sort"  
  output2="$outputdir/${name}_sorted"
  outputERROR2="$outputdir/${name}_sorted.E"
  outputQ2="$outputdir/${name}_sorted.Q"
  qsub -V -q serial.q -b y -cwd -o $outputQ2 -e $outputERROR2 -N ${name2}_dmel -hold_jid ${name}_dmel "samtools sort $output $output2" 
 done
 go=0
fi
done