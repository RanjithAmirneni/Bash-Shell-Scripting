#!/bin/bash

# Example 1: Basic input with a prompt
read -p "Enter your name: " name
echo "Hello, $name!"

# Example 2: Reading multiple values
read -p "Enter your age: " age
read -p "Enter your city: " city

echo "You are $age years old and live in $city."

# Example 3: Reading a password securely (without echoing input)
read -sp "Enter your password: " password
echo -e "\nPassword accepted!"

# Example 4: Using a default value if no input is provided
read -p "Enter a filename (default: file.txt): " filename
filename=${filename:-file.txt}
echo "Using filename: $filename"

# Example 5: Reading input into an array
read -p "Enter a list of fruits (separated by spaces): " -a fruits
echo "You entered the following fruits: ${fruits[*]}"
