#!/bin/sh

for i in {1..7}
do
    mkdir FOLDER$i
    cd FOLDER$i
    for j in {1..10}
    do

      	echo "Roquemen" >> archivo$j.txt
    done
    cd ..

done
