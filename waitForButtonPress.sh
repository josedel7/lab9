#!/bin/bash
let n=$(gpio read 5)
while test $n -eq 1; 
do
	echo "1"
	let n=$(gpio read 5)
done

while test $n -eq 0; 
do
        echo "0"
	let n=$(gpio read 5)
done

