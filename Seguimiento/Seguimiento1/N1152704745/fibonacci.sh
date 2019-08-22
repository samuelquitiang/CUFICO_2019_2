#!/bin/bash

fib_i=0
fib_ip1=1

for i in {1..100}

  do

	fib_ip2=$((fib_i + fib_ip1))

	
	if [ $(($fib_ip2 % 2 )) = 0 ]

	        then
	   
	        echo $fib_ip2

		      fi
		
	fib_i=$fib_ip1

	fib_ip1=$fib_ip2

	done
