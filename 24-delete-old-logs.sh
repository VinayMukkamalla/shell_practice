#!/bin/bash

user=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
START_TIME=$(date +%s)
mkdir -p $LOG_FOLDER
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

echo " script started execution at : $(date)" | tee -a $LOG_FILE

if [ $user -gt 0 ]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    exit 1
fi

SOURCE_DIR=/home/ec2-user/DEST_DIR #/home/ec2-user/app-logs 

if [ ! -d $SOURCE_DIR ]; then
    echo "source directory $SOURCE_DIR does not exist "
    exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -type f -mtime +14)



while IFS= read -r filepath
do
    echo "file $filepath will be deleted"
    rm -rf $filepath
    echo "$filepath deletion completed"

done <<<$FILES_TO_DELETE

# I will check source dir exist or not

# then find out the files 

# log the files that re going to be deleted 

# then delete the log files

