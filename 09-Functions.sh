#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this with root user access"
    exit 1
fi

VALIDATE () { ##function
  if [ $1 -ne 0 ]; then
     echo "$2..... Failure"
     exit 1
  else 
     echo "$2.... Success"

    fi  
}

dnf install nginx -y
VALIDATE $? "Install Nginx"

dnf install mysql -y
VALIDATE $? "Install Mysql"

dnf install nodejs -y
VALIDATE $? "Install Nodejs"