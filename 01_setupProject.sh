#!/bin/bash

##########################################################
# This script will download the split gap minder zip file,
# unzip it, 
##########################################################


echo Creating project directory structure
sleep 2
mkdir -v data code output data/archive

# Fetch the zip file
ZIP_FILE_URL="http://npk.io/1jHRK+"
ZIP_FILE_NAME="rawSplitCountries.zip"

echo Downloading zipped data file from $ZIP_FILE_URL
sleep 2
curl -L $ZIP_FILE_URL -o data/$ZIP_FILE_NAME

echo Unzipping file. 
sleep 2
unzip data/$ZIP_FILE_NAME -d data

echo Copying the zip file contents to the archive directory
sleep 2
cp -vr data/clean data/archive/


