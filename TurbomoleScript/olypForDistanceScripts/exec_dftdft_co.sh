#!/bin/bash

# exec CO using HF-dft

#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > dftoutput
cd ..
done
done
cd ..