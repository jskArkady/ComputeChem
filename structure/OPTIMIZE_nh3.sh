#!/bin/bash

for (( i = 2 ; i<=2 ; i++ ))
do
for (( j = 0 ; j<=0 ; j++ ))
do
for (( k = 5 ; k<=9 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do
cd ~/OPTI
mkdir ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"
printf ""$i"."$j""$k""$l"\n" |./run > ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/fake_"$i"."$j""$k""$l"
sed '1,/newBond/d' ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/fake_"$i"."$j""$k""$l" > ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"/"$i"_"$j""$k""$l".xyz
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"
x2t "$i"_"$j""$k""$l".xyz > coord
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\n*\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/$scfconv        7/$scfconv      8\n\n$denconv   1.0d-8/' control
mkdir input
cp * input
done
done
done
done


for (( i = 2 ; i<=2 ; i++ ))
do
for (( j = 1 ; j<=1 ; j++ ))
do
for (( k = 0 ; k<=5 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do
cd ~/OPTI
mkdir ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"
printf ""$i"."$j""$k""$l"\n" |./run > ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/fake_"$i"."$j""$k""$l"
sed '1,/newBond/d' ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/fake_"$i"."$j""$k""$l" > ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"/"$i"_"$j""$k""$l".xyz
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/"$i"."$j""$k""$l"
x2t "$i"_"$j""$k""$l".xyz > coord
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\n*\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/$scfconv        7/$scfconv      8\n\n$denconv   1.0d-8/' control
mkdir input
cp * input
done
done
done
done

cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_NH3/
rm -f fake_*
