#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0"

if [ $USERID -ne 0 ]; then
    echo "please run this with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE () { ##function
  if [ $1 -ne 0 ]; then
     echo "$2..... Failure" | tee -a $LOGS_FILE
     exit 1
  else 
     echo "$2.... Success" | tee -a $LOGS_FILE

    fi  
}

for package in $@ # sudo 12-loops.sh nginx mysql nodejs
do
   dnf install $package -y &>>$LOGS_FILE
   VALIDATE $? "$package installation"
done