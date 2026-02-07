#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo-e "$R please run this with root user access $N" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE () { ##function
  if [ $1 -ne 0 ]; then
     echo -e "$2.....$R Failure $N" | tee -a $LOGS_FILE
     exit 1
  else 
     echo -e "$2.... $Y Success $N" | tee -a $LOGS_FILE

    fi  
}

for package in $@ # sudo 12-loops.sh nginx mysql nodejs  #loops concept
do
  dnf list installed $package -y &>>LOGS_FILE
    if [ $? -ne 0 ];then
      echo -e " $Y $package not installed,installing now $N"
      dnf install $package -y &>>$LOGS_FILE
      VALIDATE $? "$package installation"
    else
      echo -e " $Y $package already installed,skip for now $N"
    fi
done