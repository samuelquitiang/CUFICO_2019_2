#utilice "for" de bash para crear n directorios cada uno con m archivos que se llamen "foldern" y "archivo.txt" respectivamente.
cada archivo debe contener una palabra.

#Solución:

for n in {1..7}
do 
mkdir folder${n}
for m in {1..10}
do 
touch folder${n}/archivo${m}.txt
echo LAVIDAESBELLA > folder${n}/archivo${m}.txt
done
done
