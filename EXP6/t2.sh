#!/bin/bash

echo -n "Enter filename: "
read filename

if [[ ! -f "$filename" ]]; then
    echo "File does not exist!"
    exit 1
fi

echo -n "Enter word to search: "
read word

count=$(grep -o -w "$word" "$filename" | wc -l)

echo "The word '$word' appears $count times in the file '$filename'."


