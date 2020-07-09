#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result

#Rolling the 7 six-sided dice and generating random results because my name has 7 letters

Anureet1=$(( RANDOM % 6 + 1))
Anureet2=$(( RANDOM % 6 + 1))
Anureet3=$(( RANDOM % 6 + 1))
Anureet4=$(( RANDOM % 6 + 1))
Anureet5=$(( RANDOM % 6 + 1))
Anureet6=$(( RANDOM % 6 + 1))
Anureet7=$(( RANDOM % 6 + 1))

#Rolled the dice and it shows random output for each dice
echo "EOF
Rolling...
$Anureet1 $Anureet2 $Anureet3 $Anureet4 $Anureet5 $Anureet6 $Anureet7
"
