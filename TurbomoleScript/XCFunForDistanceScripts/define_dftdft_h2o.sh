#!/bin/bash

# define H2O using HF-dft

#HighSpin
cd ./H2O/HS
mkdir dftdft # HF-pbe, HF-tpss
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/H2O/HS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/H2O/HS/dftdft/pbe/"$i"."$j"
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
for (( j = 100 ; j <= 200 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/HS
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/H2O/HS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/H2O/HS/dftdft/tpss/"$i"."$j"
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
cd ./H2O/LS
mkdir dftdft # HF-pbe , HF-tpss only 
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
cd ./dftonly/pbe/"$i"."$j"
cp * ~/xcfun/H2O/LS/dftdft/pbe/"$i"."$j"
cd ~/xcfun/H2O/LS/dftdft/pbe/"$i"."$j"
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
for (( j = 0 ; j <= 9 ; j+=5 ))
do
mkdir "$i".00"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/pbe/"$i".00"$j"
cp * ~/xcfun/H2O/LS/dftdft/pbe/"$i".00"$j"
cd ~/xcfun/H2O/LS/dftdft/pbe/"$i".00"$j"
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
for (( j = 10 ; j <= 55 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/pbe/"$i".0"$j"
cp * ~/xcfun/H2O/LS/dftdft/pbe/"$i".0"$j"
cd ~/xcfun/H2O/LS/dftdft/pbe/"$i".0"$j"
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
for (( j = 950 ; j <= 999 ; j+=5 ))
do
mkdir "$i"."$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/tpss/"$i"."$j"
cp * ~/xcfun/H2O/LS/dftdft/tpss/"$i"."$j"
cd ~/xcfun/H2O/LS/dftdft/tpss/"$i"."$j"
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
for (( j = 0 ; j <= 9 ; j+=5 ))
do
mkdir "$i".00"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/tpss/"$i".00"$j"
cp * ~/xcfun/H2O/LS/dftdft/tpss/"$i".00"$j"
cd ~/xcfun/H2O/LS/dftdft/tpss/"$i".00"$j"
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
for (( j = 10 ; j <= 55 ; j+=5 ))
do
mkdir "$i".0"$j"
cd ..
cd .. # /H2O/LS
cd ./dftonly/tpss/"$i".0"$j"
cp * ~/xcfun/H2O/LS/dftdft/tpss/"$i".0"$j"
cd ~/xcfun/H2O/LS/dftdft/tpss/"$i".0"$j"
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