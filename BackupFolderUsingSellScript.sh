#!/bin/bash
source_folder=$1
destination_folder=$2
current_date=$(date +"%Y-%m-%d") # Store the current date in the 'current_date' variable

if [ ! -d "$source_folder" ]; then
echo -e "$source_folder does not exist"
exit 1
fi

if [ ! -d "$destination_folder" ]; then
echo -e "$destination_folder does not exist"
else
mkdir -p "$destination_folder"
fi

tar -czvf "$destination_folder/${current_date}.tar.gz" "$source_folder"