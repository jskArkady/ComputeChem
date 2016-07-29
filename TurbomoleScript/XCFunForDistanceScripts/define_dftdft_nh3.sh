#!/bin/bash

# define NH3 using HF-dft

#HighSpin
cd ./NH3/HS
mkdir dftdft # HF-pbe, HF-tpss
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/NH3/HS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/NH3/HS/dftdft/pbe/"$i"."$j"
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
for (( j = 250 ; j <= 355 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /NH3/HS
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/NH3/HS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/NH3/HS/dftdft/tpss/"$i"."$j"
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
cd ./NH3/LS
mkdir dftdft # HF-pbe , HF-tpss only 
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
cd ./dftonly/pbe/"$i".0"$j"
cp * ~/xcfun/NH3/LS/dftdft/pbe/"$i".0"$j"
cd ~/xcfun/NH3/LS/dftdft/pbe/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/NH3/LS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/NH3/LS/dftdft/pbe/"$i"."$j"
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
for (( j = 50 ; j <= 99 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /NH3/LS
cd ./dftonly/tpss/"$i".0"$j"
cp * ~/xcfun/NH3/LS/dftdft/tpss/"$i".0"$j"
cd ~/xcfun/NH3/LS/dftdft/tpss/"$i".0"$j"
printf "\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       2000/$scfiterlimit       1/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
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
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/NH3/LS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/NH3/LS/dftdft/tpss/"$i"."$j"
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