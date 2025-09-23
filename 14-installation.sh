#!/bin/bash

# id -u gives user id number for root user id -u is 0 for other users it is greater than 0
# we want to install mysql { dnf install mysql -y} throught script

user=$(id -u)

if [$user -gt 0]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    exit 1
fi

VALIDATE(){
    if [ $1 -gt 0]; then
        echo "Installing $2 is Failure"
        exit 1
    else
        echo "Installing $2 is Success"

    fi

}

dnf install mysql -y

VALIDATE $? "mysql"

dnf install nginx -y

VALIDATE $? "nginx"  #using function call and passing parameters to reduce duplicate code and reuse block of code

#if [ $? -gt 0]; then
#    echo "Installing nginx is Failure"
#    exit 1
#else
#    echo "Installing nginx is Success"
#
#fi

dnf install python3 -y

VALIDATE $? "mpython3"

#if [ $? -gt 0]; then
#    echo "Installing mongodb-mongosh is Failure"
#    exit 1
#else
#
#fi