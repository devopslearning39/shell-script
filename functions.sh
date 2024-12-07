#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]; then
        echo "$2 Failed"
        exit 1
    else
        echo "$2 success"
}

if [ $ID -ne 0 ]; then
    echo "Not a root user"
    exit 1
else
    echo "Proceeding, you are a root user"
fi

yum install mysql -y

VALIDATE $? "MYSQL"

yum install git -y

VALIDATE $? "GIT"
