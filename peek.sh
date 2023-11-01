#!/bin/bash

if [[ -z "$2" ]]; then num_lines=3; else num_lines=$2;fi

input_file="$1"

file_lines=$(wc -l < "$input_file")

if [[ "$file_lines" -le $((2 * num_lines)) ]]; then cat "$input_file"; else
  echo "The file contains more than $((2 * num_lines)) lines."
  head -n $num_lines "$input_file"
  echo "..."
  tail -n $num_lines "$input_file" ;fi
