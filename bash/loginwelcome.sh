#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

title="Overlord"

#set the $USER for the variabe myname
myname=$USER

#set hostanme of your system
hostname=$(hostname)

#showing the time
time=$(date +%X)
#showing the date
date=$(date +%A)

###############
# Main        #
###############

#instead of displaying the output, put it in a variable called dodge
dodge="Welcome to planet $hostname $title $myname! It is $date and time is $time"

cowsay $dodge
