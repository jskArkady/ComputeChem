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


#HF-DFT
#cd HF
#mkdir HFDFT_5
#cp * HFDFT_5
#cd HFDFT_5
#printf '\n\n\n\n\n\ndft\non\nfunc pbe0\ngrid 6\nq\nq\n' | define
#sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
#sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
#mkdir input
#cp * input


#PBE0-BP86
cd DFT_5
mkdir PBE0-BP86
cp * PBE0-BP86
cd PBE0-BP86
printf '\n\n\n\n\n\ndft\non\nfunc b-p\ngrid 6\nq\nq\n' | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
mkdir input
cp * input


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

#HF-DFT
#cd HF
#mkdir HFDFT_5
#cp * HFDFT_5
#cd HFDFT_5
#printf '\n\n\n\n\n\ndft\non\nfunc pbe0\ngrid 6\nq\nq\n' | define
#sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
#sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
#mkdir input
#cp * input

#PBE0-BP86
cd DFT_5
mkdir PBE0-BP86
cp * PBE0-BP86
cd PBE0-BP86
printf '\n\n\n\n\n\ndft\non\nfunc b-p\ngrid 6\nq\nq\n' | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
mkdir input
cp * input


done
done
done
done
