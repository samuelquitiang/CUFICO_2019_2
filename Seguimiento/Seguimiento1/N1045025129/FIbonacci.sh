X=1
Y=1
for i in {1..1000}
do Z=$(( X+Y ))
   X=$Y
   Y=$Z
   
   if [ $(( Z%2  )) = 0 ]
   then echo $Z
    fi
done

    
