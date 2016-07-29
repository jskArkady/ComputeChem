#!/bin/bash

# define NCH, NH3 using HF-olyp and olyp
# HF - already exist

# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfiterlimit        2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
mkdir "$i"
cd ..
cp "$i".xyz ./olyp/"$i"
cd ./olyp/"$i"
x2t "$i".xyz > coord
if [ "$i" -eq 1 ]
then
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
else
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
fi
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
done


# back to ~/olypXCFun
cd ..
cd ..

# NH3 (1=high, 2=low)
cd ./nh3

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/$scfiterlimit        2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
mkdir "$i"
cd ..
cp "$i".xyz ./olyp/"$i"
cd ./olyp/"$i"
x2t "$i".xyz > coord
if [ "$i" -eq 1 ]
then
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
else
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
fi
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
done
