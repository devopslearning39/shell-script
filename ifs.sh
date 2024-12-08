#!/bin/bash

FILE="/etc/passwd"

if [ ! -f $FILE ] ; then
    echo "File doesn't exist"
else
    echo "File is there"
fi

while IFS= ":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "Username: $username"
    echo "Password: $password"
    echo "userId: $user_id"
    echo "groupId: $group_id"
    echo "User full name": $user_fullname
    echo "Home directory: $home_dir"
    echo "Shell path: $shell_path"
done < $FILE