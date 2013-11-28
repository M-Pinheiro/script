#!/bin/bash

# This is a script to extract individual Chromosomes sections from ChrOnly
# reference file called: ChrOnly.hits
# Chromosomes to extract include:
#Chr2L, Chr2LHet, Chr2R, Chr2RHet, Chr3L, Chr3LHet, Chr3R, Chr3RHet, Chr4, ChrX, ChrXHet, ChrYHet
 
 
#Chr2L
grep "chr2L" ChrOnly.hits > chr2L.hits

#Chr2R
grep "chr2R" ChrOnly.hits > chr2R.hits

#Chr3L
grep "chr3L" ChrOnly.hits > chr3L.hits

#Chr3R
grep "chr3R" ChrOnly.hits > chr3R.hits

#Chr4
grep "chr4" ChrOnly.hits > chr4.hits


#ChrX
grep "chrX" ChrOnly.hits > chrX.hits
 
#ChrYHet
grep "chrYHet" ChrOnly.hits > chrYHet.hits
 
