#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling..."
#I used variable name "anu" for sides of the dice

anu=$(( 6 ))

#I used variable name "reet" for minimum number to roll the dice

reet=$(( 1 ))

# roll the dice and save the results

die1=$(( RANDOM % $anu + $reet))
die2=$(( RANDOM % $anu + $reet ))

#displayong sum of the rolls
#I used variable name "x" for sum of the rolls

x=$(( die1 + die2 ))

#calculating the average of the dice
#I used variable name "y" for average

y=$(( x / 2 ))
# displaying the output

echo "Rolled $die1, $die2 and sum is $x with an average of $y"
