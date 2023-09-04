#! /bin/bash

# Usage: positional_params.sh arg1 arg2

# Accessing positional parameters
echo "The first argument is: $1"
echo "The second argument is: $2"

# Run the script with arguments
# Example: ./positional_params.sh hello world

####################################################################################
#Using $# to Get the Number of Arguments:
# Get the number of arguments
num_args=$#
echo "Number of arguments: $num_args"

# Run the script with arguments
# Example: ./positional_params.sh arg1 arg2 arg3

####################################################################################

#Iterating through all the positional parameters

for arg in "$@"; do
    echo "Argument: $arg"
done
######################################################################################
#Checking for the Existence of Specific Arguments:
#Here -n is one of the string tests that [ ] can perform. Specifically, it checks whether a given

if [ -n "$1" ]; then
    echo "The first argument exists and is: $1"
else
    echo "The first argument is not provided."
fi

# Run the script with or without arguments
# Example: ./positional_params.sh  argument
###################################################################################

#Using Default Values for Missing Arguments:
arg1=${1:-default_value}
arg2=${2:-another_default}

echo "Argument 1: $arg1"
echo "Argument 2: $arg2"

# Run the script with or without arguments
# Example: ./positional_params.sh arg1
########################################################################################
#we 

echo "Executing Script: $0"
for params in $@
do
     echo "Parameters are: $params"
done
######################################################################################








