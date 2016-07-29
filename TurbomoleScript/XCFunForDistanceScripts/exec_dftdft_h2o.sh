#!/bin/bash

# exec H2O using HF-dft

#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-pbe, HF-tpss

cd ./pbe # HF-pbe
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
cd ..

cd ./tpss # HF-tpss
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
cd ..

# back to ~/xcfun
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-pbe, HF-tpss

cd ./pbe # HF-pbe
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
dscf > dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
dscf > dftoutput
cd ..
done
done
cd ..


cd ./tpss # HF-tpss
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
dscf > dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
dscf > dftoutput
cd ..
done
done
cd ..
