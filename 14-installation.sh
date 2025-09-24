#!/bin/bash

# id -u gives user id number for root user id -u is 0 for other users it is greater than 0
# we want to install mysql { dnf install mysql -y} throught script

user=$(id -u)


if [ $user -gt 0 ]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    exit 1
fi

VALIDATE(){
    if [ $1 -gt 0 ]; then
        echo -"Installing $2 ..Failure"
        exit 1
    else
        echo  "Installing $2 ..Success "

    fi

}

dnf list installed mysql
# install if mysql is not already installed
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "mysql is already installed"


dnf list installed nginx
# install if mysql is not already installed
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed"


#using function call and passing parameters to reduce duplicate code and reuse block of code
# replced by VALIDATE()
#if [ $? -gt 0]; then
#    echo "Installing nginx is Failure"
#    exit 1
#else
#    echo "Installing nginx is Success"
#
#fi

dnf list installed python3
# install if mysql is not already installed
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is already installed"


# replced by VALIDATE()
#if [ $? -gt 0]; then
#    echo "Installing python3 is Failure"
#    exit 1
#else
#    echo "Installing python3 is Success"
#fi