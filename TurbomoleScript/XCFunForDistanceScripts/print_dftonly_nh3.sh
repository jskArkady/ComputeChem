#!/bin/bash

# print the results of dftonly cal. of NH3

#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, pbe only, tpss only 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..


cd ./pbe # pbe only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..

cd ./tpss # tpss only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..

# back to ~/xcfun
cd ..
cd ..
cd ..

#LowSpin
cd ./CO/LS

cd ./dftonly # HF only, pbe only, tpss only 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..


cd ./pbe # pbe only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..

cd ./tpss # tpss only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..