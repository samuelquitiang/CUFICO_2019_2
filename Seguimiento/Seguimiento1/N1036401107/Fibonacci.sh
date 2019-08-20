#!/bin/bash

f0 = 0
f1 = 1
for i in {1..1000}
do
    f2 = $(( f0 + f1 ))
    if [ $(( f2 % 2  )) = 0 ]
    then
	echo $f2
    fi
    f0 = $f1
    f1 = $f2
    i = i+1
done
