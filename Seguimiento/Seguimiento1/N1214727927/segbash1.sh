for i in {1..7}; do mkdir folder${i}; cd folder${i}; for j in {1..10}; do touch archivo${j}.txt; echo "hola" > archivo${j}.txt; done; cd -; done

