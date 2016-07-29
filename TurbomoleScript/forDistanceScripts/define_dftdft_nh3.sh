#!/bin/bash

# define NH3 using HF-dft

#HighSpin
cd ./NH3/HS
mkdir dftdft # HF-pbe, HF-b3lyp
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/NH3/HS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/NH3/HS/dftdft/pbe/"$i"."$j"
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
for (( j = 250 ; j <= 355 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/NH3/HS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/NH3/HS/dftdft/b3lyp/"$i"."$j"
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
cd ./NH3/LS
mkdir dftdft # HF-pbe , HF-b3lyp only 
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/forDistance/NH3/LS/dftdft/pbe/"$i".0"$j"
cd ~/forDistance/NH3/LS/dftdft/pbe/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/NH3/LS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/NH3/LS/dftdft/pbe/"$i"."$j"
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
for (( j = 50 ; j <= 99 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/forDistance/NH3/LS/dftdft/b3lyp/"$i".0"$j"
cd ~/forDistance/NH3/LS/dftdft/b3lyp/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/NH3/LS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/NH3/LS/dftdft/b3lyp/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..