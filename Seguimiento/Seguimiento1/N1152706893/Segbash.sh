for i in {1..7}; do mkdir Folder${i}; cd Folder${i}; for j in {1..10}; do touch Archivo${j}.txt; echo "Holi" > Archivo${j}.txt; done; cd -; done
