#!/bin/bash

HOST="www.google.com"
ping -c 1 $HOST

if [ "$?" -ne 0 ]; then
    echo "$HOST unreachable."
    exit 1
fi

exit 0
#################################################################################################################################
#After execting the script you type echo $? in the command line to  check the exit status.
#################################################################################################################################
#If you have scripts that are executing other scripts, then you can program accordingly to use these returns codes.
#In another script we can call this script and we can check the exit status.

# Run your script
./your_script.sh

# Check the return code
if [ $? -eq 0 ]; then
    echo "Script executed successfully."
else
    echo "Script encountered an error."
fi
################################################################################################################################
