#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "run this with root user access"
    exit 1
fi

echo "installing Ngix"
dnf install nginx -y
