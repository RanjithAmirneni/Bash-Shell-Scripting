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
# For the prvious example we can use && and || and acheive the same functionality

HOST="www.google.com"
ping -c 1 $HOST && echo "$HOST is reachable!"

HOST="https://www.google.com"
ping -c 1 $HOST || echo "$HOST is not reachable!"

####################################################################

#chain multiple commands together on a single line using semicolon

cp test.txt /home/ranjith/ ; cp test.txt /home/ranjith/test



#######################################################################













