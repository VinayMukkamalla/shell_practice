#!/bin/bash

echo "Enter a number to check it is prime number : "

read number

counter=0  #to hold number of facrors a number has

if [ $number -gt 1 ]; then

    for [ i=1;i<=$number;i++]{

        for[ j=1;j<=$number; j++]{

            if [$(j*i) -eq $number]; then
                counter+=1
            fi

        }
    }
fi

if [ counter -eq 2 ]; then
    echo " given number $number is a prime number"
elif[ $number -eq 1 ]; then
    echo " given number $number is a prime number"
else
    echo " given number $number is not a prime number"

fi