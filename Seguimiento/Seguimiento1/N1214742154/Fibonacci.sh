#!/bin/bash
# Calcula los primeros 1000 fibonaccis e imprime los pares
#By juan david tobon
#fn = f(n-1)+f(n-2)
# f_0 = 0, f_1 = 1; fn = f_n-1 + f_n-2

f_n_minus_2=0
f_n_minus_1=1
echo -n "${f_n_minus_2} "
for i in {2..1000}
do

    f_n=$(( f_n_minus_2+f_n_minus_1 ))
    val=$(( f_n%2 ))
    if [ $val = 0 ];
    then
	echo -n "${f_n} "
    fi

    f_n_minus_2=$f_n_minus_1
    f_n_minus_1=$f_n

done
