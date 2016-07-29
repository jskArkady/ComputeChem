#!/bin/bash

# define H2O using only dft

#HighSpin
cd ./H2O/HS
mkdir dftonly # HF only, pbe only, tpss only 
cd ./dftonly

mkdir hf # HF only
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
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

cd ./dftonly # pbe only
mkdir pbe
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/pbe
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/pbe/"$i"."$j"
cd ./dftonly/pbe/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done

cd ./dftonly # tpss only
mkdir tpss
cd ..
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/tpss
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/tpss/"$i"."$j"
cd ./dftonly/tpss/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
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
mkdir dftonly # HF only, pbe only, tpss only 
cd ./dftonly

mkdir hf # HF only
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
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
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
x2t "$i"_00"$j".xyz > coord
cd ./dftonly/hf
mkdir "$i".00"$j"
cd ..
cd ..
mv coord ./dftonly/hf/"$i".00"$j"
cd ./dftonly/hf/"$i".00"$j"
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
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
x2t "$i"_0"$j".xyz > coord
cd ./dftonly/hf
mkdir "$i".0"$j"
cd ..
cd ..
mv coord ./dftonly/hf/"$i".0"$j"
cd ./dftonly/hf/"$i".0"$j"
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

cd ./dftonly # pbe only
mkdir pbe
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/pbe
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/pbe/"$i"."$j"
cd ./dftonly/pbe/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
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
cd ./dftonly/pbe
mkdir "$i".00"$j"
cd ..
cd ..
mv coord ./dftonly/pbe/"$i".00"$j"
cd ./dftonly/pbe/"$i".00"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
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
cd ./dftonly/pbe
mkdir "$i".0"$j"
cd ..
cd ..
mv coord ./dftonly/pbe/"$i".0"$j"
cd ./dftonly/pbe/"$i".0"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional pbe/functional xcfun set-gga\n   functional xcfun pbex 1.0\n   functional xcfun pbec 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done

cd ./dftonly # tpss only
mkdir tpss
cd ..
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
x2t "$i"_"$j".xyz > coord
cd ./dftonly/tpss
mkdir "$i"."$j"
cd ..
cd ..
mv coord ./dftonly/tpss/"$i"."$j"
cd ./dftonly/tpss/"$i"."$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
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
cd ./dftonly/tpss
mkdir "$i".00"$j"
cd ..
cd ..
mv coord ./dftonly/tpss/"$i".00"$j"
cd ./dftonly/tpss/"$i".00"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
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
cd ./dftonly/tpss
mkdir "$i".0"$j"
cd ..
cd ..
mv coord ./dftonly/tpss/"$i".0"$j"
cd ./dftonly/tpss/"$i".0"$j"
printf "\n\na coord\nired\n*\nb all TZVP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n" | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       2000/' control
sed -i 's/functional tpss/functional xcfun set-mgga\n   functional xcfun tpssx 1.0\n   functional xcfun tpssc 1.0/' control
sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
mkdir backup
cp * backup
cd ..
cd ..
cd ..
done
done