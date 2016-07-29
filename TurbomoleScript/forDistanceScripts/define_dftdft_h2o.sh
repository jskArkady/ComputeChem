#!/bin/bash

# define H2O using HF-dft

#HighSpin
cd ./H2O/HS
mkdir dftdft # HF-pbe, HF-b3lyp
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/H2O/HS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/H2O/HS/dftdft/pbe/"$i"."$j"
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
for (( j = 100 ; j <= 200 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/H2O/HS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/H2O/HS/dftdft/b3lyp/"$i"."$j"
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
cd ./H2O/LS
mkdir dftdft # HF-pbe , HF-b3lyp only 
cd ./dftdft

mkdir pbe # HF-pbe
cd ./pbe
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/H2O/LS/dftdft/pbe/"$i"."$j"
cd ~/forDistance/H2O/LS/dftdft/pbe/"$i"."$j"
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
for (( j = 0 ; j <= 9 ; j+=5 ))
do
mkdir "$i".00"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".00"$j"
cp * ~/forDistance/H2O/LS/dftdft/pbe/"$i".00"$j"
cd ~/forDistance/H2O/LS/dftdft/pbe/"$i".00"$j"
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
for (( j = 10 ; j <= 55 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/forDistance/H2O/LS/dftdft/pbe/"$i".0"$j"
cd ~/forDistance/H2O/LS/dftdft/pbe/"$i".0"$j"
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
for (( j = 950 ; j <= 999 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/forDistance/H2O/LS/dftdft/b3lyp/"$i"."$j"
cd ~/forDistance/H2O/LS/dftdft/b3lyp/"$i"."$j"
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
for (( j = 0 ; j <= 9 ; j+=5 ))
do
mkdir "$i".00"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".00"$j"
cp * ~/forDistance/H2O/LS/dftdft/b3lyp/"$i".00"$j"
cd ~/forDistance/H2O/LS/dftdft/b3lyp/"$i".00"$j"
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
for (( j = 10 ; j <= 55 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/forDistance/H2O/LS/dftdft/b3lyp/"$i".0"$j"
cd ~/forDistance/H2O/LS/dftdft/b3lyp/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..