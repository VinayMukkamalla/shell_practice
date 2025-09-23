#!/bin/bash

num1=100
num2=400

sum=$(($num1+$num2))

echo "sum of $num1 and $num2 is : $sum"


name=vinay

sum=$(($num1+$num2+$name))
echo " print sum : $sum"

#arrays
name1=Gajendhra

name2=qaiser

name3=rakesh
echo "Tutor name is : $name1"
echo "Tutor name is : $name2"
echo "Tutor name is : $name1"

#declaring an array
name4=("rahul" "pardhu" "experiences")

echo

echo "printing names in array {name4[@]} : ${name4[@]}"

echo "Tutor name is : ${name4[0]}"
echo "Tutor name is : ${name4[1]}"
echo "Tutor name is : ${name4[2]}"