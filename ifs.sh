#!/bin/bash

FILE="/etc/passwd"

if [ ! -f $FILE ] ; then
    echo "File doesn't exist"
fi

while IFS= read -r line
do
    echo "$line"
done <<< $FILE