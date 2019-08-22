#!/bin/bash
x=0
y=1
for i in {1..1000}
do
z=$(( y+x ))
x=$y
y=$z
if [ $(( z%2 )) = 0 ]
then
echo $z
fi
done
    
