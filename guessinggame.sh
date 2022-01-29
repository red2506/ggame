#!/bin/bash
#read the total file number of the current direcitory
fileNumber=`ls -l . | egrep -c '^-'`

function playGame()
{
	echo "Welcome to Guessing Game! In this program you just have you to guess how many files are in the current directory."
	echo "Please enter your number , which is the guess "

	#read user guess
	read g

	#evalutating user guess
	while [[ $g -ne $fileNumber ]]
		do
			if [[ $g -gt $fileNumber ]]
			then
				echo "Soory, your guess is to high."
			elif [[ $g -lt $fileNumber ]]
			then
				echo "Sorry, your guess is too low."
			fi
			echo "Please enter your number again" 
			read g
		done
	#upon successful guess, print congratulation message
	echo "Your guess is CORRECT!!!"
}
#prompt user for playing the game
playGame
