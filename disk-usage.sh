#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE "tmp|File")

echo "$DISK_USAGE"





# grep -vE 'tmp|File':
    #  grep: This is used to search for text patterns in the input.
    # -v: Inverts the match, meaning it excludes any lines that match the given pattern.
    # -E: Enables extended regular expressions, allowing more complex patterns like | (OR).
    # 'tmp|File': This is a regular expression pattern that matches any line containing either the word tmp or File. The pipe | works as an OR operator.