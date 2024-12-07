#/bin/bash

SOURCE_DIR='/Users/praveenjella/Documents/DEPLOYMENTS/Jella/Shell_Practice/test1'

# Checking given filder/file is present or not

if [ ! -d $SOURCE_DIR ] ; then
    mkdir $SOURCE_DIR
    echo "Mentioned directory is not there, so we have created"
else
    echo "Directory is present"
fi

