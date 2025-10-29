#!/bin/bash
echo "enter a number: "
read num
temp=$num
n=${#num} # number of digits
sum=0

while [ $temp -gt 0 ]
do
	digit=$((temp % 10))
	sum=$((sum + digit**n))
	temp=$((temp / 10))
done

if [ $sum -eq $num ]
then
	echo " $num is an armstrong number. "
else
	echo " $num is not an armstrong number. "
fi

