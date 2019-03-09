#!/bin/bash

#####################################################################
# This file performs cleaning operations on country files with errors
#####################################################################
datadir="data/clean"

# Fix Guinea file - we just want the middle 12 rows
echo "Fixing Guinea.cc.txt file"
head -n 24 $datadir/Guinea.cc.txt | tail -n 12 > $datadir/Guinea.cc.txt.clean
mv -v $datadir/Guinea.cc.txt.clean $datadir/Guinea.cc.txt

# We just want the top 12 rows
echo "Fixing China.cc.txt file"
head -n 12 $datadir/China.cc.txt > $datadir/China.cc.txt.clean
mv -v $datadir/China.cc.txt.clean $datadir/China.cc.txt

# We just want the top 12 rows
echo "Fixing Niger.cc.txt file"
head -n 12 $datadir/Niger.cc.txt > $datadir/Niger.cc.txt.clean
mv -v $datadir/Niger.cc.txt.clean $datadir/Niger.cc.txt

sleep 1
