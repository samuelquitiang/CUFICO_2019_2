#!/bin/bash

a=1
b=1

for i in {1..1000}
do
    c=$(( $a+$b ))
    d=$(( $c%2 ))
    if [ $d -eq 0 ]
    then
	echo $c
    fi

    b=$a
    a=$c

done

       
       
       
