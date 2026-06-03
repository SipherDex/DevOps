#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source destination"
    exit 1
fi

cp "$1" "$2"

if [ $? -eq 0 ]; then
    echo "File copied successfully."
else
    echo "Error: file copy failed."
fi
