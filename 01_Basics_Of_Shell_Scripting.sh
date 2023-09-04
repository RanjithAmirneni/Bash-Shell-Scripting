#! /bin/bash
echo “Shell Scripting Is Fun!”

if [ -d "/home/ranjith/bash_shell_scripting" ]; then
  echo "The directory exists."
else
  echo "The directory does not exist."
fi
################################################################################################
if [ -e "/home/ranjith/bash_shell_scripting/shellscript.sh" ]; then
  echo "The file exists."
else
  echo "The file does not exist."
fi
################################################################################################
#if statement example:
age=14

if [ "$age" -lt 18 ]; then
    echo "You are underage."
fi
################################################################################################
#if else example:
NAME="ranjith"

if [ "$NAME" = "ranjith" ]; then
  echo "Welcome to bash shell scripting ${NAME}kumar"
else
  echo "Welcome to bash shell scripting $NAME"
fi


grade=55
if [ "$grade" -ge 60 ]; then
    echo "You passed the exam."
else
    echo "You failed the exam."
fi
################################################################################################
#if -elif-else statement example:

score=85

if [ "$score" -ge 90 ]; then
    echo "You got an A."
elif [ "$score" -ge 80 ]; then
    echo "You got a B."
elif [ "$score" -ge 70 ]; then
    echo "You got a C."
else
    echo "You need to improve your score."
fi
