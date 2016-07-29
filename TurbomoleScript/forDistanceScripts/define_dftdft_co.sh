#!/bin/bash

# define CO using HF-dft

#HighSpin
cd ./CO/HS
mkdir dftdft # HF-pbe, HF-b3lyp
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/CO/HS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/CO/HS/dftdft/pbe/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

mkdir b3lyp # HF-b3lyp
cd ./b3lyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/CO/HS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/CO/HS/dftdft/b3lyp/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

# back to ~/forDistance
cd ~/forDistance

#LowSpin
cd ./CO/LS
mkdir dftdft # HF-pbe , HF-b3lyp only 
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/CO/LS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/CO/LS/dftdft/pbe/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

mkdir b3lyp # HF-b3lyp
cd ./b3lyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/CO/LS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/CO/LS/dftdft/b3lyp/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..
