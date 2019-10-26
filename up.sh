#!/bin/bash

# The up function
# Goes up the directory tree $1 times.
# If $1 is not set or empty it goes up the directory tree 1 time.
# If the input isn't a number or it is negative an error message is displayed.
function up {
  input=$1

  # If $input is not set or empty -> Use 1
  if [ -z "$1" ]; then
    input=1
  fi

  # Regular expression to check if the input is a decimal number
  regular_expression='^[0-9]+$'
        
  # If $input doesn't match the regular expression -> Error 
  if ! [[ $input =~ $regular_expression ]]; then
    echo "up: Error \"$input\" is invalid!" >&2
    echo "Usage: up [count]"
    echo "up goes up the directory tree \"count\" times."
    echo ""
    echo "Example:"
    echo "  up 3"
  else
    for (( i=0; i<$input; i++ ))
    do
      cd ..
    done
  fi
}

