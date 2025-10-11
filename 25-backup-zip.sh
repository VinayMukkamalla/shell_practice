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

SOURCE_DIR=$1

DEST_DIR=$2

DAYS=${3:-14}

if [ ! -d $SOURCE_DIR ]; then
    echo -e " source path : $R $SOURCE_DIR $N does not exist"
    exit 1
fi

if [ ! -d $DEST_DIR ]; then
    echo -e " Destination path :$R $DEST_DIR $N does not exist"
    exit 1
fi

usage(){
    echo  -e " $R ERROR:: file usage manadatory parameters $G $0 <source dir> <destination dir> $Y <days>  (by default 14 days if not provided ) $N "
    exit 1
}

if [ $# -lt 2 ]; then
    usage
fi


FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)

if [ ! -z "${FILES}" ]; then
    echo " files found "
else
    echo " $Y NO files are present in $SOURCE_DIR older than $DAYS days $N "
fi


echo " $FILES will be deleted "



# source dir

# destination directory

# find the files older than  14 days

# zip them

# move to destination 

# some team will pick the files and keep them in storage servers

# then delete the files in source directory

#Admin task if you have to have access to all folders we should have admin access

#script usaage we should pass variables source dir and dest dir and days {no of days or older log files by days to delete}

#out of 3 args 2(source dir,dest dir) are mandatory and 1(days) is optional

# usage is a function that is option it defines the usage of this script 
#if no parameters are passed then suggests user to run by passing 2 args which are manadtory
# $# count of args passed through cli if $# -lt 2 raise error
# first define usage(){} then call in condition [ $# -lt 2 ]

#check if both dource dir and destin dir exits individually and raise error if they don't exist

#add uniqueness to the log file using $(data +%F-%H-%M)

