#!/bin/bash

for i in {0..5}
do	if [ $i -eq "5" ]; then
	gpio mode $i in
	gpio mode $i up 
	else
	gpio mode $i out
	gpio write $i 0
	fi
done
