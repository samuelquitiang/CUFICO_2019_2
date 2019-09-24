for i in {1..7} ; do mkdir folder${i}; for j in {1..10}; do touch archivo{j}.txt | mv archivo{j}.txt Documentos/CLASES -FC/folder${i}/; done; done
