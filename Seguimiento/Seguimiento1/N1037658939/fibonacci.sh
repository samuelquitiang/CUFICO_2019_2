f0=0;
f1=1;

for n in {1..1000};
do
fn=$((f0+f1));
mod=$((fn%2));

if [ $mod -eq 0 ];
then
echo $fn;
fi;

f0=$f1;
f1=$fn;
done
