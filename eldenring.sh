#!/bin/bash

echo "Welcome tarnished, Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)	
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack."

#First beast battle
name=$1

beast=$(( $RANDOM % 2 ))
echo "Your first beast is approaching. prepare to battle. Pick between 0-1.(0/1)"

read tarnished

if [[ $beast == $tarnished ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
	echo "You Died"
	echo "You need a better luck to go to the next level. RETRY!"
	exit 1
fi

sleep 2

echo "Making it harder!"
echo "----------------------------------------------------------------------"
echo "If you want to go to the next level via a cheatcode, go back to start by hitting 0  and 
execute your 
script with your name as bash eldenring.sh your_name also when asked to pick a number for 
this level enter your name"
echo "-----------------------------------------------------------------------"
echo "Press 0 to exit and 1 to continue also if you have already manipulated the execution 
with your name hit 1. Catch: To take advantage of this cheat you need to qualify level 1"

read choice
if [[ $choice == 0  ]]; then
	exit 1
else
	echo "Boss battle. Got scared. It's Margit. Pick a number between 0-9. (0-9)"
	read tarnished

	beast=$(( $RANDOM % 10 ))

	if [[ $beast == $tarnished || $tarnished == $name ]]; then
        	echo "Margit VANQUISHED!! Congrats fellow tarnished"
	else
        	echo "You Died"
        	exit 1
	fi
fi


sleep 2

echo "***************************************"
echo "Entering the secret level only meant for Developers!! or else you Die"

if [[ $USER == "ritikagupta" ]]; then
	echo "You already are a winner"
elif [[ $USER == $name ]]; then
	echo "Hey, $name you vanquished all beast."
else
	echo "You Died"
fi

sleep 2
