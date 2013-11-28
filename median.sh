#!/bin/bash

# This is a script to count median of each chromosome. 

# Chr2LEu, Chr2LHet, Chr2REu, Chr2RHet, Chr3LEu, Chr3LHet, Chr3REu, Chr3RHet, Chr4, ChrXEu, ChrXHet, ChrYHet

echo "Chr2LEu" 
cut -f 3 chr2LEu.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr2LHet"
cut -f 3 chr2LHet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr2REu"
cut -f 3 chr2REu.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr2RHet"
cut -f 3 chr2RHet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr3LEu"
cut -f 3 chr3LEu.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr3LHet"
cut -f 3 chr3LHet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr3REu"
cut -f 3 chr3REu.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr3RHet"
cut -f 3 chr3RHet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "Chr4"
cut -f 3 chr4.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "ChrXEu"
cut -f 3 chrXEu.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "ChrXHet"
cut -f 3 chrXhet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'

echo "ChrYHet"
cut -f 3 chrYHet.txt | sort -n | awk ' { a[i++]=$1; } END { print a[int(i/2)]; }'