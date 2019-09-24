#!/bin/bash
c=1 #n-1
b=0 #n-2
a=0 #n
d=0
for i in {1..1000}
do
    a=$((c+b))
    b=$c
    c=$a
    if [ $((a % 2)) -eq $d ]
       then 
	   echo $a
    fi
    
done
