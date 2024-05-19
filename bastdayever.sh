#!/bin/bash

name=$1
compliment=$2

user=$(whoami)
date=$(date)
dir=$(pwd)

echo "Good Morning $name!!"

sleep 3

echo "You're looking good today $name!!"

sleep 3

echo "You have the best $compliment I've ever seen $name!!"

sleep 2

echo "You are currently logged in as $user and you are in the directory $dir. Also today is: 
$date"
