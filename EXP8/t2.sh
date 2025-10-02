!/bin/bash

read -p "Enterfile 1: " file1
read -p "Enterfile 2: " file2

if cmp -s "$file1" "$file2"; then
    echo "Files are identical."
else
    echo "Files are different."
fi
