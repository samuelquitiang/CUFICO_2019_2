 for n in 1 2 3 4 5 6 7; do mkdir Folder$n; for m in {1..10}; do touch Folder${n}/Archivo${m}.txt; i="texto"; echo ${i} > Folder${n}/Archivo$m.txt; done; done
