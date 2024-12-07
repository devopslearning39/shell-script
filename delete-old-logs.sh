#!/bin/bash

SOURCE_DIR="/home/centos/shell-script"

echo $SOURCE_DIR | ls -l

# Showing log files more than 14 days

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")
echo "$FILES_TO_DELETE"