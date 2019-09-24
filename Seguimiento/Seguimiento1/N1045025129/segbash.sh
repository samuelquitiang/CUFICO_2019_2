for i in {1..7}; do mkdir FOLDER$i; for j in {1..10}; do touch FOLDER${i}/Archivo${j}.txt; cat  ar.txt > FOLDER${i}/Archivo${j}.txt; done; done
