#!/bin/bash

# create a folder sudo mkdir -p /var/log/shell-script

user=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

echo " script started execution at : $(date)" | tee &>>$LOG_FILE
mkdir -p $LOG_FOLDER

if [ $user -gt 0 ]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    exit 1
fi

VALIDATE(){
    if [ $1 -gt 0 ]; then
        echo -e "$2 ..$R Failure $N"
        exit 1
    else
        echo -e " $2 ..$G Success $N"

    fi

}