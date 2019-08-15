original_location = $(pwd); for i in {1..6}; do mkdir folder${i}; cd folder${i}; for j in {1..10}; do touch archivo${j}.txt; echo CARABELLA > archivo${j}.txt; done; cd original_location; done
