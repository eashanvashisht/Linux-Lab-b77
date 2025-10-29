## Experiment [5]: [Shell Programming]

### Name: Eashan Vashisht Roll no.: 590028572 Date: 2025-09-05

### AIM:
* [To Learn Basic Conditional Statements in Bash Scripting]

### Requirements:
* [Any Linux Distro, any kind of text editor (vs code, vim, notepad, nano, etc)]

### Theory:
* [Basic usage of conditions and arrays in bash scripting.]

## Procedure & Observations

## Exercise 1: [Prime Number Check]

## Task Statement:
* [To check if the number given by the user is a prime number or not.]

## Explanation:
* [using if else loop wap to check if the number is a prime number or not.]

## Command(s):
```
#!/bin/bash
echo "Enter a number: "
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
```

### Output:
<p align="center">
<img align="center" src="./img/prime.png" width="900">
</p>

## Exercise 2: [Sum of Digits]

## Task Statement:
* [Take input from user and give the sum of two digits.]

## Explanation:
* [This script will take input from user and will give the following output.]

## Command(s):
```
#!/bin/bash
echo "Enter a number: "
read num
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
done

echo "Sum of digits: $sum"
```

### Output:
<p align="center">
<img align="center" src="./img/sum.png" width="900">
</p>

## Exercise 3: [Armstrong Numbers]

## Task Statement:
* [Take input user and give the sum of Armstrong number of n digits is a number equal to the sum of its digits raised to the power n. Example: 153 = 13 + 53 + 33]

## Explanation:
* [This script will tell if the number entered by the user is an armstrong number or not.]

## Command(s):
```
#!/bin/bash
echo "Enter a number: "
read num
temp=$num
n=${#num}   # number of digits
sum=0

while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    sum=$((sum + digit**n))
    temp=$((temp / 10))
done

if [ $sum -eq $num ]
then
    echo "$num is an Armstrong number."
else
    echo "$num is not an Armstrong number."
fi
```

### Output:
<p align="center">
<img align="center" src="./img/armstrong.png" width="900">
</p>

## Result:
* Exercises were completed for Basic Shell Scripting.