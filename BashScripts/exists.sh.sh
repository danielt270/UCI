#!/bin/bash
output=$HOME/research/sysinfo.txt
if [ ! -d $HOME/research ]; then
     mkdir $HOME/research
fi
if [ -f output ]; then
     rm output
fi
