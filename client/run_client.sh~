#!/bin/sh

myfile1=$(md5sum 1.txt)
myfile2=$(cat checksum.md5)

echo "Checking... "

if [ "$myfile1" = "$myfile2" ]
then 
    echo "File is correct."
else
    echo "File is not correct."
    rm 1.txt 
    rm checksum.md5
fi
