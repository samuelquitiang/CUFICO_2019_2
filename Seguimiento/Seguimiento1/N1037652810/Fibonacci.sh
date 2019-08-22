#!/bin/bash
#calcular los primeros 1000 numeros
f0=0
f1=1
for i in {1..1000};
do
ff=$((f0+f1))
#echo ${ff}
f0=${f1}
#echo ${f0}
f1=${ff}
#echo ${f1}
if [ $(( ff % 2 )) = 0 ]; #imprimir si el residuo de dividirlo por 2 da 0
then
    echo ${ff};
fi;
done
