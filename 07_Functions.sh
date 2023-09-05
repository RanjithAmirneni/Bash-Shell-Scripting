#! /bin/bash

#creating the function
function hello (){

	echo "Hello!"
}

#calling the function

hello
#######################################################
#creating the function without using function keyword
hello (){

	echo "Hello!"
}

#calling the function
hello

########################################################
#Calling a function inside another function

#creating the function hello that calls time_now function inside it
function hello (){

	echo "Hello!"
	 time_now 
}

#creating the function time_now
function time_now (){

	echo "The current time is: $(date +%r)"
	#we can also see more data arguments by executing "data --help"
}

#calling the function hello
hello
#############################################################

