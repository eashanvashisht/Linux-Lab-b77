#!/bin/bash
i=1
until [ $i -gt 5 ]
do
    echo "Count: $i"
    i=$((i+1))
done

