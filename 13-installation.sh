#!/bin/bash

# id -u gives user id number for root user id -u is 0 for other users it is greater than 0
# we want to install mysql { dnf install mysql -y} throught script

user=$(id -u)

if [$user -gt 0]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    #exit 1
fi

if [$user -gt 0]; then
    #you have stop the execution of script and exit from the flow you can add exit code in above condition to avoid extra lines of code
    exit 1
fi

dnf install mysql -y

if [ $? -gt 0]; then
    echo "Installing mysql is Failure"
    exit 1
else
    echo "Installing mysql is Success"

fi