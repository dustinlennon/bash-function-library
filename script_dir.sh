#!/bin/bash

# double hyphens anticipate unusual directory names that might otherwise
# be interpreted as parameters

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
