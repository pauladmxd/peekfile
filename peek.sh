#!/bin/bash

# Check if two command-line arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <input_file> <number_of_lines>"
  exit 1
fi

input_file="$1"
lines_to_display="$2"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Input file '$input_file' does not exist."
  exit 1
fi

# Calculate the number of lines at the beginning and end
lines_to_display=$((lines_to_display > 0 ? lines_to_display : 0))

# Read the specified number of lines from the beginning
head -n "$lines_to_display" "$input_file"

# Print the "..." line
echo "..."

# Read the specified number of lines from the end
tail -n "$lines_to_display" "$input_file"

