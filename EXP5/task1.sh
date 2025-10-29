#!/bin/bash
echo "enter a number:"
read num
flag=0

for ((i=2; i<=num/2; i++))
do
	if [ $((num % i)) -eq 0 ]
	then
		flag=1
		break
	fi
done

if [ $flag -eq 0 ]
then
	echo "$num is a prime number."
else
	echo "$num is not a prime number."
fi


