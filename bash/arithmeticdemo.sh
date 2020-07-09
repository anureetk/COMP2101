#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Asking user to inpt three numbers of own choice

#I am using three different variables x,y,z to take input from user

read -p "Hello user,please provide first number: " x
read -p "Perfect, now please enter a second number: " y
read -p "Now please enter third number: " z

#now we are adding the three numbers given by the user
sum=$(( x + y + z ))

#now we are performing product of the three numbers
product=$(( x * y * z ))

#displaying the our output

cat <<EOF
The addition of three numbers is $sum
The multiplication of three numbers is $product
EOF
