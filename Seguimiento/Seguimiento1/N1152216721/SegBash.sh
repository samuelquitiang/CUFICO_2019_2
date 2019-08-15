#!/bin/bash
#A sample use of the for loop in bash
for n in {1..7}
do mkdir Folder${n}
cd Folder${n}
for m in {1..10}
do echo "ThisIsFile${m}InFolder${n}" > Archivo${m}.txt
done
cd ..
done
