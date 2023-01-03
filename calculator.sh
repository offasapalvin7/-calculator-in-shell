#!/bin/bash

# Perform arithmetic on two numbers

# Make sure we have exactly two arguments
if [ $# -ne 2 ]; then
    echo "Error: must provide two numbers" >&2
    exit 1
fi

# Check if the arguments are valid numbers
if ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "Error: arguments must be numbers" >&2
    exit 1
fi

# Calculate and print the result
result=$(( $1 + $2 ))
echo "The result is $result"
