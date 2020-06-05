#!/bin/bash
# File: guessinggame.sh
# Peer-graded Assignment: Bash, Make, Git, and GitHub

clear
echo "Hello, Please guess the number of files in the current dir."
echo "Please type your guess here:"
read res

function right{
echo "Your guess is right, thanks!"
}

function extractfn {
	local val =$(ls -l | wc -l)-1
	echo $val
}

check_param =$(extractfn)

while [[ $res -ne $check_param ]]
do
	if [[ $res -gt $check_param ]]
	then
		echo "Try again with a smaller number!"
	else 
		echo "Try again with a greater number!"
	fi
	echo
	echo "Try again please: "
	read res
done

right
