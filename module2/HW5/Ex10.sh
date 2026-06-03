#!/bin/bash

WATCH_DIR="$HOME/watch"

mkdir -p "$WATCH_DIR"

while true
do
    for file in "$WATCH_DIR"/*
    do
        [ -f "$file" ] || continue

        case "$file" in
            *.back)
                continue
                ;;
        esac

        echo "New file found: $file"
        echo "Content:"
        cat "$file"
        echo

        mv "$file" "$file.back"
    done

    sleep 5
done
