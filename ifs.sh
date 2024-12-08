#!/bin/bash

FILE="/etc/passwd"

if [ ! -f $FILE ] ; then
    echo "File doesn't exist"
else
    echo "File is there"
fi

while IFS= ":" read -r line
do
    echo "$line"
done < $FILE