#!/bin/bash

# to record output of command by running them dynamically within the script

#Date=$(date)
echo "start time is : $(date)"

start_time=$(date +%s)

sleep 10   #just to get a difference intime

end_time=$(date +%s)

total_time=$(($end_time-$start_time))

echo "end time is : $(date)"
echo " total time taken to run is: $total_time"
