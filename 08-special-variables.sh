#!/bin/bash

echo "print all variables passed through command line : $@ " # prints as an individual element 

echo "print all variables passed through command line : $* "  #prints as a single string

echo "print count of variables passed through command line : $# "

echo "print current filename or current script name : $0 "

echo "print current directory : $PWD "

echo "who is running the script  : $USER "

echo "print home directory of user : $HOME "

echo "print PID of the script : $$ "

sleep 10 &   # '&' after a command moves the process to background

echo "print PID of last command in background : $! "