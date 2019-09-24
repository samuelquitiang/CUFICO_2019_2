#!/bin/bash

fn2=0
fn1=1

for i in {1..1000}
do

    fn=$(( fn1+fn2 ))
    
    if [ $(( fn%2 )) = 0 ]
    then
	echo $fn
    fi

    fn2=$fn1
    fn1=$fn
    
done
