#! /bin/bash
#creating the function hello and calling time_now function inside it
function hello (){

	echo "Hello!"
	 time_now 
}
#calling the function hello
hello

#creating the function time_now
function time_now (){

	echo "Its $(date +%r)"
}
