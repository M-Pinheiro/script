#!/bin/bash
# This is a script to use samtools mpileup on all SRR files to produce individually average genome coverage.


echo "SRR497710"
samtools mpileup SRR497710.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497711"
samtools mpileup SRR497711.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497712"
samtools mpileup SRR497712.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497713"
samtools mpileup SRR497713.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497714"
samtools mpileup SRR497714.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497715"
samtools mpileup SRR497715.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497716"
samtools mpileup SRR497716.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497717"
samtools mpileup SRR497717.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497718"
samtools mpileup SRR497718.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497719"
samtools mpileup SRR497719.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497720"
samtools mpileup SRR497720.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497721"
samtools mpileup SRR497721.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497722"
samtools mpileup SRR497722.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497723"
samtools mpileup SRR497723.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497724"
samtools mpileup SRR497724.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497725"
samtools mpileup SRR497725.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497726"
samtools mpileup SRR497726.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497727"
samtools mpileup SRR497727.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497728"
samtools mpileup SRR497728.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497729"
samtools mpileup SRR497729.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "SRR497730"
samtools mpileup SRR497730.sorted.bam | awk '{ count++ ; SUM += $4 } END { print "Total: " SUM "\t" "Nucleotides: " count "\t" "Average_coverage: " SUM/count }'

echo "Script completed"