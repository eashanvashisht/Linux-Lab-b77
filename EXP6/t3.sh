#!/bin/bash

echo -n "Enter the value of N: "
read N

a=0
b=1
i=1

echo "The first $N Fibonacci numbers are:"

while [ $i -le $N ]
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
    i=$((i + 1))
done

echo

