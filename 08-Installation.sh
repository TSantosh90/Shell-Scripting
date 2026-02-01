#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this with root user access"
    exit 1
fi

echo "installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx..... Failure"
    exit 1
else 
    echo "Installing Nginx.... Success"

fi

dnf install Mysql -y

if [ $? -ne 0 ]; then
    echo "Installing Mysql..... Failure"
    exit 1
else 
    echo "Installing Mysql.... Success"

fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs..... Failure"
    exit 1
else 
    echo "Installing nodejs.... Success"

fi

