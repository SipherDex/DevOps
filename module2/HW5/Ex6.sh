#!/bin/bash

read -p "Enter sentence: " sentence

words=($sentence)

for (( i=${#words[@]}-1; i>=0; i-- ))
do
    echo -n "${words[$i]} "
done

echo
