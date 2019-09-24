#!bin/bash

fi1=0;fi2=1;c=0;for i in {0..1000};do fi2=$(($fi2 + $fi1)); fi1=$(($fi2 - $fi1)); a=$(($fi2%2)); if [ $a = 0 ]; then echo "Fibonacci par:"; echo ${fi2#-}; fi; done
