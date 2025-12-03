#!/bin/bash
declare -A recommendations
recommendations["fever"]="Take medication|Stay hydrated"
recommendations["cold"]="Rest|Use nasal spray"

symptoms=$(echo "$input" | tr ',' ' ')
for s in $symptoms; do
    echo "For $s:"
    IFS='|' read -ra tips <<< "${recommendations[$s]}"
    for t in "${tips[@]}"; do
        echo "- $t"
    done
done
