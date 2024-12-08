#!/bin/bash

FILE="/etc/passwd"

if [ ! -f $FILE ] ; then
    echo "File doesn't exist"
else
    echo "File is there"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "username: $username"
    echo "user ID: $user_id"
    echo "User Full name: $user_fullname"
done < $FILE