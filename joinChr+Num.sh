#!/bin/bash

# this is a script to join together two files as two adjacent columns and save as another file.

pr -m -t -s\  chr2LEu.hits Chr2LEunumbers.txt > 2LEu.hits
pr -m -t -s\  chr2LHet.hits Chr2LHetnumbers.txt > 2LHet.hits
pr -m -t -s\  chr2REu.hits Chr2REunumbers.txt > 2REu.hits
pr -m -t -s\  chr2RHet.hits Chr2RHetnumbers.txt > 2RHet.hits
pr -m -t -s\  chr3LEu.hits Chr3LEunumbers.txt > 3LEu.hits
pr -m -t -s\  chr3LHet.hits Chr3LHetnumbers.txt > 3LHet.hits
pr -m -t -s\  chr3REu.hits Chr3REunumbers.txt > 3REu.hits
pr -m -t -s\  chr3RHet.hits Chr3RHetnumbers.txt > 3RHet.hits
pr -m -t -s\  chr4.hits Chr4numbers.txt > 4.hits
pr -m -t -s\  chrXEu.hits ChrXEunumbers.txt > XEu.hits
pr -m -t -s\  chrXHet.hits ChrXHetnumbers.txt > XHet.hits
pr -m -t -s\  chrYHet.hits ChrYHetnumbers.txt > YHet.hits