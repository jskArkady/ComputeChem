#!/bin/bash

# exec NCH, NH3 using HF-olyp and olyp
# HF - already exist

# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
dscf > olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
dscf > olypoutput
cd ..
done


# back to ~/olypXCFun
cd ..
cd ..

# NH3 (1=high, 2=low)
cd ./nh3

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
dscf > olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
dscf > olypoutput
cd ..
done