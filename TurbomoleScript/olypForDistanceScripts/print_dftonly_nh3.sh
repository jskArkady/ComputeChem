#!/bin/bash

# print the results of olyp only cal. of NH3

#Energy
echo "===============TOTAL Energy==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total energy      =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total energy      =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#Wall time
echo "===============Wall time==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total wall-time" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total wall-time" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#Kinetic E
echo "===============Kinetic E==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "kinetic energy    =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "kinetic energy    =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#Potential E
echo "===============Potential E==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "potential energy  =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "potential energy  =" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#Nuc. repul. E
echo "===============Nuc. repul. E==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" output
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#Exc
echo "===============Exc==============="
#HighSpin
cd ./NH3/HS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 250 ; j <= 355 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./NH3/LS

cd ./dftonly # HF only, olyp only, 

cd ./hf # HF only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
cd ..


cd ./olyp # olyp only
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 50 ; j <= 99 ; j+=5 ))
do
cd ./"$i".0"$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 155 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
cd ..
done
done
cd ..


# back to ~/forDistance
cd ..
cd ..
cd ..