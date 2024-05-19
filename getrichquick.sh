#!/bin/bash
user=$(whoami)
dir=$(pwd)
hostname=$(hostname)


echo "What is your name?"
read name

echo "What is your age?"
read age

echo "Hello, $name, you are $age years old."

echo "Current user is $user, working directory is $dir, name of the host is $hostname"

echo $twitter

sleep 2

getrich=$((($RANDOM % 20 )+ age))

echo "$name, you will become a millionaire when you are $getrich years old"

