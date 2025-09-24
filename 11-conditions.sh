#!/bin/bash

echo "Enter a number to check it is even or odd : "

read number

if [ $(($number % 2)) -eq 0 ]; then
    echo "Entered number $number is even "
else
    echo "Entered number $number is odd"
fi