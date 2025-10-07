#!/bin/bash

set -e

# error(){
#     #error function
#    # echo "there is an error $LINENO, command is : $BASH_COMMAND"
# }

# trap will execuete when there is an error trap is a command shell will call trap by default ehen there is an ERR

trap 'echo "there is an error $LINENO, command is : $BASH_COMMAND"' ERR 

echo "we will know about set -e option to replace VALIDATE function"

echo "we are setting error to raise using set -e, or set -euo pipefail "

echo "before error"

sdbbhjg;dnf #here shell understands there is an error and ERR is the signal

echo "after error"