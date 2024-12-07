#/bin/bash

SOURCE_DIR='/Users/praveenjella/Documents/DEPLOYMENTS/Jella/Shell_Practice/test1'

if [ ! -d $SOURCE_DIR ] ; then
    mkdir $SOURCE_DIR
    echo "Mentioned directory is not there, so we have created"
else
    echo "Directory is present"
fi

CHECK=(find $SOURCE_DIR -type f -mtime +14 -name "*.log")
    # find . -type f -mtime +14 -name "*. log")

echo "$CHECK"