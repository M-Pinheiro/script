#!/bin/bash
# this is a bash shell script that will use seq -f %.f to generate mapped reads on each chromosome, based on median for all chromosome. 

echo "chr2LEu 5639485"
seq -f %.f 42 42 236858412 > Chr2LEunumbers.txt

echo "Chr2LHet 98044"
seq -f %.f 42 42 4117890 > Chr2LHetnumbers.txt

echo "Chr2REu 5653068"
seq -f %.f 42 42 237428898 > Chr2REunumbers.txt

echo "Chr2RHet 805433"
seq -f %.f 42 42 24968453 > Chr2RHetnumbers.txt

echo "Chr3LEu 6056811"
seq -f %.f 42 42 33828228 > Chr3LEunumbers.txt

echo "Chr3LHet 732170"
seq -f %.f 42 42 30751182 > Chr3LHetnumbers.txt

echo "Chr3REu 7058618"
seq -f %.f 42 42 296461998 > Chr3REunumbers.txt

echo "Chr3RHet 710545"
seq -f %.f 42 42 29842932 > Chr3RHetnumbers.txt

echo "Chr4 410120"
seq -f %.f 42 42 17225082 > Chr4numbers.txt

echo "ChrXEu 5614869"
seq -f %.f 42 42 235824540 > ChrXEunumbers.txt

echo "ChrXHet  469732"
seq -f %.f 42 42 19728786 > ChrXHetnumbers.txt

echo "ChrYHet  117090"
seq -f %.f 42 42 4917822 > ChrYHetnumbers.txt

echo "run wc -l to check numbers of lines are consistent"
wc -l *numbers.txt > chrlineschecl.txt

echo "script finished"