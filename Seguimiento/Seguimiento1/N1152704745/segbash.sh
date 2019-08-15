for n in {1..7}
 do
 mkdir folder${n}/
 for m in {1..10}
     do
     touch folder${n}/archivo${m}.txt
     echo "arbra" > folder${n}/archivo${m}.txt
     done
 done

