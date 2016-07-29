#!/bin/bash

# define NH3 using HF-dft

#HighSpin
cd ./NH3/HS
mkdir dftdft # HF-olyp
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/olypForDistance/NH3/HS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/NH3/HS/dftdft/olyp/"$i"."$j"
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
cd ./NH3/LS
mkdir dftdft # HF-olyp
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/olypForDistance/NH3/LS/dftdft/olyp/"$i".0"$j"
cd ~/olypForDistance/NH3/LS/dftdft/olyp/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
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
cp * ~/olypForDistance/NH3/LS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/NH3/LS/dftdft/olyp/"$i"."$j"
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