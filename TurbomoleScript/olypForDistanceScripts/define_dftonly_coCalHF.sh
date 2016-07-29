#!/bin/bash

# define CO using only dft

#HighSpin
cd ./CO/HS
mkdir dftonly # HF only, olyp only
cd ./dftonly

mkdir hf # HF only
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/hf
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/hf/"$i"."$j"
cd ./dftonly/hf/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\n*\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/$scfconv        7/$scfconv        8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done

cd ./dftonly # olyp only
mkdir olyp
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS
mkdir dftonly # HF only, olyp only
cd ./dftonly

mkdir hf # HF only
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/hf
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/hf/"$i"."$j"
cd ./dftonly/hf/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\n*\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/$scfconv        7/$scfconv        8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done

cd ./dftonly # olyp only
mkdir olyp
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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
