## Experiment [4]: [Bash Scripting]
### Name: Eashan Vashisht, Roll No.: 590028572 , Date: 2025-09-04
### AIM: 
* [To Learn Basics of Bash Scripting.]

### Requirements:
* [Any Linux Distro, any kind of text editor (vs code, vim, notepad, nano, etc)]

### Theory: 
* [Learning the basics of bash scripting.]

## Procedure & Observations

## Exercise 1: [Hello World Script]

## Task Statement: 
* [Basic Usage of Shell Scripts]

## Explanation: 
* [Writing Begginer level Shell Scripts]

## Command(s):
```
#!/bin/bash
echo "Hello, World!"
```

#### Output:
<p align="center">
<img align="center" src="./img/hello.png" width="900">
</p>

## Exercise 2: [Personalized Greeting Script]

## Task Statement: 
* [Basic Shell Script to callout user defined function.]

## Explanation: 
* [This Shell script will take input from user and store it in a variable and then call the variable which will output the stored value.]

## Command(s):
```
#!/bin/bash
echo "Enter your name: "
read name     # 'read' takes user input
echo "Hello, $name! Welcome to Shell Scripting."
```

## Output:
<p align="center">
<img align="center" src="./img/greeting.png" width="900">
</p>

## Exercise 3: [Arithmetic Operations in Shell Scripting]

## Task Statement:
* [Using Basic Arithmetic Operations in Shell Scripts]

## Command(s):
```
#!/bin/bash
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Addition: $((num1 + num2))"
echo "Subtraction: $((num1 - num2))"
echo "Multiplication: $((num1 * num2))"
echo "Division: $((num1 / num2))"
```

## Output:
<p align="center">
<img align="center" src="./img/arithmetic.png" width="900">
</p>

## Exercise 4:
* [Voting Eligibility]

## Task Statement:
* [Using if else loop check if the user is eligible to vote or not.]

## Command(s):
```
#!/bin/bash
echo "Enter your age: "
read age

if [ $age -ge 18 ]
then
    echo "You are eligible to vote."
else
    echo "Sorry, you are not eligible to vote."
fi
```

## Output:
<p align="center">
<img align="center" src="./img/vote.png" width="900">
</p>

## Result
* The Exercises were successfully completed for Basic Shell Scripting.

## Challenges Faced & Learning Outcomes
* Challenge 1: [this experiment was easy.]

## Learning: [What new concept or command did you learn?]


## Conclusion
* [This was a practice on how to use bash scripts.]