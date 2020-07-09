#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#set a password you want to be guessed by the user
string1="HarryPotter"

#Asking user to type in the password
read -p "Please type in your first guess: " string2

#user typing in the first guess
if [[ $string2 == $string1 ]]; then
  echo "You guessed it right"
else [[ $string2 != $string1 ]]
  read -p "That is incorrect, please guess again: " string3
fi

#user typing in the second guess
if [ $string3 == $string1 ]; then
  echo "You guessed it right"
else [ $string3 != $string1 ]
  read -p "That is incorrect, please guess again: " string4
fi

#user typing in the third guess
if [ $string4 == $string1 ]; then
  echo "You guessed it right"
else [ $string4 != $string1 ]
  read -p "That is incorrect, please guess again: " string5
fi

#user typing in the fourth guess
if [ $string5 == $string1 ]; then
  echo "You guessed it right"
else [ $string5 != $string1 ]
  read -p "That is incorrect, please guess again: " string6
fi

#user typing in fifth guesse
if [ $string6 == $string1 ]; then
  echo "You guessed it right"
else [ $string6 != $string1 ]
  echo "YOU FAILED!!"
fi
#done
