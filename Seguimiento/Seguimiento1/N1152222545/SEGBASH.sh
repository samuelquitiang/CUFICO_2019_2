for i in {1..7}; do mkdir folder$i; for j in {1..10}; do touch folder$i/archivo${j}.txt; a="aiudaa"; echo $a > folder$i/archivo${j}.txt; done; done
