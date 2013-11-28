#!/bin/bash
# this is a bash shell script that will use seq -f %.f to generate mapped reads on each chromosome, based on median for all chromosome. 

echo "chr2LEu 5639485"
seq -f %.f 42 42 236858411 > Chr2LEunumbers.hits

echo "Chr2LHet 98044"
seq -f %.f 42 42 4117889 > Chr2LHetnumbers.hits

echo "Chr2REu 5653068"
seq -f %.f 42 42 237428897 > Chr2REunumbers.hits

echo "Chr2RHet 805433"
seq -f %.f 42 42 33828227 > Chr2RHetnumbers.hits

echo "Chr3LEu 6056811"
seq -f %.f 42 42 254386103 > Chr3LEunumbers.hits

echo "Chr3LHet 732170"
seq -f %.f 42 42 30751181 > Chr3LHetnumbers.hits

echo "Chr3REu 7058618"
seq -f %.f 42 42 296461997 > Chr3REunumbers.hits

echo "Chr3RHet 710545"
seq -f %.f 42 42 29842931 > Chr3RHetnumbers.hits

echo "Chr4 410120"
seq -f %.f 42 42 17225081 > Chr4numbers.hits

echo "ChrXEu 5614869"
seq -f %.f 42 42 235824539 > ChrXEunumbers.hits

echo "ChrXHet  469732"
seq -f %.f 42 42 19728785 > ChrXHetnumbers.hits

echo "ChrYHet  117090"
seq -f %.f 42 42 4917821 > ChrYHetnumbers.hits

echo "run wc -l to check numbers of lines are consistent"
wc -l *numbers.hits > chrlineschecl.hits

echo "script finished"