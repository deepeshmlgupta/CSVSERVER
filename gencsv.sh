#!/bin/bash

 start_index=2
 end_index=8


 > inputFile

 # Generate entries and append them to inputFile
 for ((i=start_index; i<=end_index; i++)); do
     rand_num=$(shuf -i 1-1000 -n 1)  # Generate a random number between 1 and 1000
     echo "$i, $rand_num" >> inputFile
 done
 
 echo "File 'inputFile' generated with entries from $start_index to $end_index."
 e
