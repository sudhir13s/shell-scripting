#!/bin/bash

# handle command line arguments
echo "Using system variable-"
echo "The script name is: $0"
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "The third argument is: $3"

echo "Using args array"
args=("$@")
echo "The arguments are: ${args[0]}, ${args[1]}, ${args[2]}"

echo "Using system variable-"
echo $@
echo "Total arguments: $#"
