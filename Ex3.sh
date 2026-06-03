#!/bin/bash

read -p "Enter filename: " filename

if [ -f "$filename" ]; then
    echo "File '$filename' exists."
else
    echo "File '$filename' doesn't exist."
fi
