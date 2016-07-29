#!/bin/bash

# define CO using HF-dft

#HighSpin
cd ./CO/HS
mkdir dftdft # HF-olyp
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/olypForDistance/CO/HS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/CO/HS/dftdft/olyp/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

# back to ~/xcfun
cd ~/olypForDistance

#LowSpin
cd ./CO/LS
mkdir dftdft # HF-olyp
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/olypForDistance/CO/LS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/CO/LS/dftdft/olyp/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..
