#!/bin/bash

SOURCE_DIR="/home/centos/shell-script"

if [ ! -d $SOURCE_DIR ] ; then
    echo "Source directory doesn't exist"
fi

DELETABLE_FILES=$( find $SOURCE_DIR -type f -mtime +7 -iname "*.txt" )

# f: file, i: case-Insensitive

echo "$DELETABLE_FILES"

while IFS= read -r line
    do
    rm -rf $line
    echo "Deleted line : $line"
done <<< $DELETABLE_FILES
