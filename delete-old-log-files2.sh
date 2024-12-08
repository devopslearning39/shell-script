#!/bin/bash

SOURCE_DIR="/home/centos/shell-script"

if [ ! -d $SOURCE_DIR ] ; then
    echo "Source directory doesn't exist"
fi

DELETABLE_FILES=$( find $SOURCE_DIR -type f -mtime +7 -name "*.txt" )

echo "$DELETABLE_FILES"