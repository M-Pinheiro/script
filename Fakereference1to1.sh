#!/bin/bash

# This is a shell script to generate read locations for chromosomes on Drosophila Genome using seq command and output as saved files that can be joined together.

# will produce numbers from values below. Values were determined by using wc -l to determined number of lines and therefore number of bases in chromosomes.

 # 5639485 chr2LEu.hits
 # 98044 chr2LHet.hits
 # 5653068 chr2REu.hits
 # 805433 chr2RHet.hits
 # 6056811 chr3LEu.hits
 # 732170 chr3LHet.hits
 # 7058618 chr3REu.hits
 # 710545 chr3RHet.hits
 # 410120 chr4.hits
 # 5614869 chrXEu.hits
 # 469732 chrXHet.hits
 # 117090 chrYHet.hits
 
# This version of the script will use seq 1 1 X - where X is equal to the total line counts. 
 
#chr2LEu
seq -f %.f 1 1 5639485 > chr2LEunumbers.hits
#chr2LHet
seq -f %.f 1 1 98044 > chr2LHetnumbers.hits
#chr2REu
seq -f %.f 1 1 5653068 > chr2REunumbers.hits
#chr2RHet
seq -f %.f 1 1 805433 > chr2RHetnumbers.hits
#chr3LEu
seq -f %.f 1 1 6056811 > chr3LEunumbers.hits
#chr3LHet
seq -f %.f 1 1 732170 > chr3LHetnumbers.hits
#chr3REu
seq -f %.f 1 1 7058618 > chr3REunumbers.hits
#chr3RHet
seq -f %.f 1 1 710545 > chr3RHetnumbers.hits
#chr4
seq -f %.f 1 1 410120 > chr4numbers.hits
#chrXEu
seq -f %.f 1 1 5614869 > chrXEunumbers.hits
#chrXHet
seq -f %.f 1 1 469732 > chrXHetnumbers.hits
#chrYHet
seq -f %.f 1 1 117090 > chrYHetnumbers.hits

echo " End Script"