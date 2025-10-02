#!/bin/bash

read -p "Enter fname: " file
read -p "Enter search pattern: " pattern

count=$(grep -c "$pattern" "$file")
echo "Number of matching lines: $count"
