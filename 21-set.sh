#!/bin/bash

set -e

trap 'error $LINENO $BASH_COMMAND' ERR 

echo "we will know about set -e option to replace VALIDATE function"

echo "we are setting error to raise using set -e, or set -euo pipefail "

echo "before error0"

sdbbhjg;dnf

echo "after error"