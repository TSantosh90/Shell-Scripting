#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0"

if [ $USERID -ne 0 ]; then
    echo "please run this with root user access"
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE () { ##function
  if [ $1 -ne 0 ]; then
     echo "$2..... Failure"
     exit 1
  else 
     echo "$2.... Success"

    fi  
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Install Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Install Mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Install Nodejs"