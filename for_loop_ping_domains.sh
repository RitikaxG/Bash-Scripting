#!/bin/bash

for x in google.com youtube.com netflix.com amazon.com;
do
	if ping -q -c 2 -W 1 $x > /dev/null; then
		echo "$x is up"
	else
		echo "$x is down"
	fi
done
