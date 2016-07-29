#!/bin/bash

# exec NH3 using only dft

#HighSpin
cd ./NH3/HS

cd ./dftonly # olyp only

cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > output
cd ..
done
done
cd ..


# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # olyp only

cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
dscf > output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
dscf > output
cd ..
done
done
cd ..
