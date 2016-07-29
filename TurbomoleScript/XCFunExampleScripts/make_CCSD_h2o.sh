#!/bin/bash

for (( i = 1 ; i<=1 ; i++ ))
do
for (( j = 9 ; j<=9 ; j++ ))
do
for (( k = 5 ; k<=9 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do

cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
cd HF
mkdir ccsd
cp * ccsd
cd ccsd
printf "\n\n\n\n\n\ncc\ncbas\nb all TZVP\n*\nmemory 3000\nricc2\nccsd\n*\n*\n*\n" | define

done
done
done
done


for (( i = 2 ; i<=2 ; i++ ))
do
for (( j = 0 ; j<=0 ; j++ ))
do
for (( k = 0 ; k<=5 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do

cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
cd HF
mkdir ccsd
cp * ccsd
cd ccsd
printf "\n\n\n\n\n\ncc\ncbas\nb all TZVP\n*\nmemory 3000\nricc2\nccsd\n*\n*\n*\n" | define

done
done
done
done
