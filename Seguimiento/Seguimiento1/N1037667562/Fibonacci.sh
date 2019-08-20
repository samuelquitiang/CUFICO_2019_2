#!/bin/bash

#Calcular los 1000 primeros numeros de Fibonacci
#Imprimir los que sean pares

f0=0
f1=1

for i in {1..1000}
do
    c=$(( f1 + f0 ))
    f0=$f1
    f1=$c
    echo $c
done

    
    



		      

	 
	 
