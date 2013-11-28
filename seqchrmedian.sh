#!/bin/bash
# this is a bash shell script that will use seq to generate mapped reads on each chromosome, based on median for that chromosome. 

echo "chr2LEu 5639485"
seq 45 45 253776870 > Chr2LEunumbers.txt

echo "Chr2LHet 98044"
seq 27 27 2647215 > Chr2LHetnumbers.txt

echo "Chr2REu 5653068"
seq 46 46 260041174 > Chr2REunumbers.txt

echo "Chr2RHet 805433"
seq 31 31 24968454 > Chr2LHetnumbers.txt

echo "Chr3LEu 6056811"
seq 42 42 254386104 > Chr3LEunumbers.txt

echo "Chr3LHet 732170"
seq 35 35 25625985 > Chr3LHetnumbers.txt

echo "Chr3REu 7058618"
seq 44 44 310579236 > Chr3REunumbers.txt

echo "Chr3RHet 710545"
seq 35 35 24869110 > Chr3RHetnumbers.txt

echo "Chr4 410120"
seq 30 30 12303630 > ahr4numbers.txt

echo "ChrXEu 5614869"
seq 36 36 202135320 > ChrXEunumbers.txt

echo "ChrXHet  469732"
seq 33 33 15501189 > ChrXHetnumbers.txt

echo "ChrYHet  117090"
seq 1 1 117090 > ChrYHetnumbers.txt

echo "run wc -l to check numbers of lines are consistent"
wc -l chr* > chrlineschecl.txt

echo "script finished"