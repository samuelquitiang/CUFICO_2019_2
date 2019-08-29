A=1
B=1

for i in range {1..1000}
do
    Suma=$(( A+B ))
    A=$B
    B=$Suma

    if [ $(( $Suma % 2 )) = 0 ]
    then
	echo $Suma
	echo $A,$B
	
	fi
done
