#!/bin/bash
echo "enter a number: "
read num
sum=0
while [ $num -gt 0 ]
	do
		digit=$((num % 10))
		echo $digit
		sum=$((sum + digit))
		echo $sum
		num=$((num / 10))
		echo $num
done

echo "sum of digits is: $sum"
