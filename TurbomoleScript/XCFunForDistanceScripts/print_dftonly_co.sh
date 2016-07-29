#!/bin/bash

# print the results of dftonly cal. of CO

#HighSpin
cd ./CO/HS

cd ./dftonly # HF only, pbe only, tpss only 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
for (( j = 200 ; j <= 325 ; j+=5 ))
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
for (( j = 200 ; j <= 325 ; j+=5 ))
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
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..


cd ./pbe # pbe only
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..

cd ./tpss # tpss only
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
grep "total wall-time" output
cd ..
done
done
cd ..