#!/bin/bash
for i in {1..9}
do
	if [ $i -eq "9" ]; then
	./setbits.sh 0
	gpio write 4 1
	sleep 1
	gpio write 4 0
	else
	./waitForButtonPress.sh
	./setbits.sh $i
	fi
done

