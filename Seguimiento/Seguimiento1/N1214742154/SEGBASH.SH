for i in {1..6}; do mkdir folder${i}; for j in {1..10}; do touch folder${i}/archivo${j}.txt; echo CARABELLA > folder${i}/archivo${j}.txt; done; done
