#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE "tmp|File")
DISK_THRESHOLD=1
MESSAGE=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage <br>"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

#echo "$message" | mail -s "High Disk Usage" info@joindevops.com

# sh mail.sh "DevOps Team" "High Disk Usage" "$message" "info@joindevops.com" "ALERT High Disk Usage"




# grep -vE 'tmp|File':
    #  grep: This is used to search for text patterns in the input.
    # -v: Inverts the match, meaning it excludes any lines that match the given pattern.
    # -E: Enables extended regular expressions, allowing more complex patterns like | (OR).
    # 'tmp|File': This is a regular expression pattern that matches any line containing either the word tmp or File. The pipe | works as an OR operator.