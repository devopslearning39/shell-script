#!/bin/bash

ID=$(id -u)
echo "$ID"

if [ $ID -eq 0 ]; then
    echo "You are a root user"
else
    echo "Not a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]; then
    echo "Failed mysql installation"
    exit 1
else
    echo "Successfully installed mysql"
fi

yum install git -y

if [ $? -ne o ]; then
    echo "Failed git installation"
    exit 1
else
    echo "Successfully installed git"
fi

