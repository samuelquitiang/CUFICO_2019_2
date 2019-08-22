P=Portatil; for n in {1..7}; do mkdir Folder${n}; for m in {1..10};do touch F\
older${n}/archivo${m}.txt; echo $P | cat > Folder${n}/archivo${m}.txt; done; \
done;
