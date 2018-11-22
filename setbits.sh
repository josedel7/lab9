#!/bin/bash
let "n1=$1&1"
let "n2=($1>>1)&1"
let "n3=($1>>2)&1"
let "n4=($1>>3)&1"
echo $n4 $n3 $n2 $n1
for j in {0..3}
do
gpio write $j 0
done


if [ $n1 -eq 1 ]
then
         gpio write 0 1
fi

if [ $n2 -eq 1 ]
then
         gpio write 2 1
fi

if [ $n3 -eq 1 ]
then
         gpio write 3 1
fi

if [ $n4 -eq 1 ]
then
         gpio write 1 1
fi
