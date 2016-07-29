#!/bin/bash

# define H2O using HF-dft

#HighSpin
cd ./H2O/HS
mkdir dftdft # HF-olyp
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/HS
cd ./dftonly/hf/"$i"."$j"
cp * ~/olypForDistance/H2O/HS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/H2O/HS/dftdft/olyp/"$i"."$j"
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
cd ./H2O/LS
mkdir dftdft # HF-olyp , HF-tpss only 
cd ./dftdft

mkdir olyp # HF-olyp
cd ./olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i"."$j"
cp * ~/olypForDistance/H2O/LS/dftdft/olyp/"$i"."$j"
cd ~/olypForDistance/H2O/LS/dftdft/olyp/"$i"."$j"
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
for (( j = 0 ; j <= 9 ; j+=5 ))
do
mkdir "$i".00"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".00"$j"
cp * ~/olypForDistance/H2O/LS/dftdft/olyp/"$i".00"$j"
cd ~/olypForDistance/H2O/LS/dftdft/olyp/"$i".00"$j"
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
for (( j = 10 ; j <= 55 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/hf/"$i".0"$j"
cp * ~/olypForDistance/H2O/LS/dftdft/olyp/"$i".0"$j"
cd ~/olypForDistance/H2O/LS/dftdft/olyp/"$i".0"$j"
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