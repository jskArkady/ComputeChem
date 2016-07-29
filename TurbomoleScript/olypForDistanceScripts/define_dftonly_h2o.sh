#!/bin/bash

# define H2O using only dft

#HighSpin
cd ./H2O/HS
mkdir dftonly # olyp only

cd ./dftonly # olyp only
mkdir olyp
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/olyp
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/olyp/"$i"."$j"
cd ./dftonly/olyp/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done

# back to ~/xcfun
cd ..
cd ..

#LowSpin
cd ./H2O/LS
mkdir dftonly # olyp only

cd ./dftonly # olyp only
mkdir olyp
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/olyp
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/olyp/"$i"."$j"
cd ./dftonly/olyp/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
x2t "$i"_00"$j".xyz > coord
cd ./dftonly/olyp
mkdir "$i".00"$j"
cd ..
cd ..
mv coord ./dftonly/olyp/"$i".00"$j"
cd ./dftonly/olyp/"$i".00"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
x2t "$i"_0"$j".xyz > coord
cd ./dftonly/olyp
mkdir "$i".0"$j"
cd ..
cd ..
mv coord ./dftonly/olyp/"$i".0"$j"
cd ./dftonly/olyp/"$i".0"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-gga\n   functional xcfun optx 1.0\n   functional xcfun lypc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done