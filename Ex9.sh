#!/bin/bash

read -p "Enter filename: " filename

if [ -f "$filename" ]; then
    cat "$filename"
else
    echo "Error: file '$filename' does not exist."
fi
