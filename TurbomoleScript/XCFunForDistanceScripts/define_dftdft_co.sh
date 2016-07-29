#!/bin/bash

# define CO using HF-dft

#HighSpin
cd ./CO/HS
mkdir dftdft # HF-pbe, HF-tpss
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/CO/HS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/CO/HS/dftdft/pbe/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

mkdir tpss # HF-tpss
cd ./tpss
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/HS
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/CO/HS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/CO/HS/dftdft/tpss/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

# back to ~/xcfun
cd ~/xcfun

#LowSpin
cd ./CO/LS
mkdir dftdft # HF-pbe , HF-tpss only 
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/CO/LS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/CO/LS/dftdft/pbe/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..

mkdir tpss # HF-tpss
cd ./tpss
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /CO/LS
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/CO/LS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/CO/LS/dftdft/tpss/"$i"."$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8/' control
mkdir backup
cp * backup
cd ..
done
done
cd ..
