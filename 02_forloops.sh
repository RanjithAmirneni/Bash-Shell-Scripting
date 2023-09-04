#!/bin/bash

# Print numbers from 1 to 5
for i in 1 2 3 4 5
do
    echo "Number: $i"
done
#################################################################
# Print the values of an array
fruits=("apple" "banana" "cherry" "date")

for fruit in "${fruits[@]}"
do
    echo "Fruit: $fruit"
done
###################################################################
# Print numbers from 1 to 10 using a range
for i in {1..10}
do
    echo "Number: $i"
done
####################################################################
# Loop through files in the current directory
for file in *
do
    echo "File: $file"
done

###################################################################
# Loop through files in a specific directory
for file in $(ls /home/ranjith/bash_shell_scripting)
do
    echo "File name in the ls directory is: $file"
done

##################################################################
# List files in the current directory
for file in $(ls)
do
    echo "File: $file"
done
##################################################################

echo "$(pwd)"
#################################################################

#Storing list of items in a variable and looping on top of it!

COLORS="red green blue yellow pink"

for color in $COLORS
do
   echo "COLOR : $color"
done
################################################################
#The below script will rename all the files that end with jpg by inserting todays date before the original file name.

$(rm *jpg)
$(touch file{1..10}.jpg)
pictures=$(ls *jpg)
Date=$(date +%F)

for picture in $pictures
do
     echo "Renaming ${picture} to ${Date}-${picture}"
     mv ${picture} ${Date}-${picture}
done
##################################################################
# Nested for loops example
for i in {1..3}
do
    echo "Outer Loop Iteration: $i"
    for j in A B C
    do
        echo "  Inner Loop Iteration: $j"
    done
done
##################################################################
