#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)

DISK_THRESHOLD=2

IP_ADDRESS=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
MESSAGE=""

while IFS= read -r line
do 
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')
    if [ $USAGE -ge $DISK_THRESHOLD ]; then
        MESSAGE+="High Disk utilisation on $PARTITION : $USAGE% \n"
    else
        echo "Disk usage normal $PARTITION : $USAGE%"
    fi

done <<< $DISK_USAGE

echo -e "Message body: $MESSAGE"

sh mail.sh "vinay.mukkamalla@gmail.com" "High Disk Utilisation Alert on $IP_ADDRESS" "Disk usage Alert" "$MESSAGE" "$IP_ADDRESS" "DevOps Team"