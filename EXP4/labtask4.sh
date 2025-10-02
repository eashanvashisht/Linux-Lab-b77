#!/bin/bash

echo "enter your age"
read age

if [ $age -ge 18 ]
then
	echo "you are elidgible to vote"
else
	echo "sorry, you are not eligible to vote"
fi







