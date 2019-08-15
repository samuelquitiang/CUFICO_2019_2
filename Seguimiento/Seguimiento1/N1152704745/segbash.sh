for n in {1..7}
 do
 mkdir folder${n}/
 cd folder${n}/
 for m in {1..10}
     do
     touch archivo${m}.txt
     echo "arbra" > archivo${m}.txt
     done
 cd ..
 done
