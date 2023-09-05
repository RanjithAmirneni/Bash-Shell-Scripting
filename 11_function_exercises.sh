#!/bin/bash
#function to count the number of files in a specific directory

file_count() {
  local count=$(ls -l . | egrep -c '^-')
  echo "Number of files in the current directory: $count"
}

# Call the file_count function
file_count

###############################################################################
#Make the function generic by passing directory as an argument and display directory and file count in that directory
file_count() {
  local directory="$1"  # Get the directory argument
  local count=$(ls -l "$directory" | egrep -c '^-')
  echo "The name of the directory is : $directory:"
  echo "Number of files in $directory are: $count"
}

# Call the file_count function with different directories
file_count "/home"
file_count "/home/ranjith"
file_count "/home/ranjith/test"
file_count "/home/ranjith/bash_shell_scripting"

###############################################################################
