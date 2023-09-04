#!/bin/bash

HOST="www.google.com"
ping -c 1 $HOST

if [ "$?" -eq "0" ]; then
     echo "$HOST reachable."
else
     echo "$HOST unreachable."
fi

######################################################################

HOST="https://www.google.com"
ping -c 1 $HOST

if [ "$?" -ne "0" ]; then
     echo "$HOST unreachable."
fi
#####################################################################
#we can also assign the return code to a variable 
HOST="https://www.google.com"
ping -c 1 $HOST
return_code="$?"

if [ "$return_code" -ne "0" ]; then
     echo "$HOST unreachable."
fi
#####################################################################
#Using logical && and ||

#mkdir /home/ranjith/test && cp test.txt /home/ranjith/test/

#cp test.txt  /home/ranjith/ || cp test.txt /home
#####################################################################

















