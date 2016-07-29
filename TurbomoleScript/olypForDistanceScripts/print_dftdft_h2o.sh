#!/bin/bash

# print the results of HF-olyp cal. of H2O

#Energy
echo "===============TOTAL Energy==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total energy      =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep "total energy      =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total energy      =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#Wall time
echo "===============Wall time==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" dftoutput
cd ..
done
done
cd ..


# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep "total wall-time" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep "total wall-time" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "total wall-time" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#Kinetic E
echo "===============Kinetic E==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep "kinetic energy    =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep "kinetic energy    =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "kinetic energy    =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#Potential E
echo "===============Potential E==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep "potential energy  =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep "potential energy  =" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "potential energy  =" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#Nuc. repul. E
echo "===============Nuc. repul. E==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" dftoutput
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep "nuclear repulsion energy  :" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep "nuclear repulsion energy  :" dftoutput
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep "nuclear repulsion energy  :" dftoutput
cd ..
done
done
cd ..


# back to ~/olypForDistance
cd ..
cd ..
cd ..

#Exc
echo "===============Exc==============="
#HighSpin
cd ./H2O/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 100 ; j <= 200 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" dftoutput | grep "Exc"
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..

#LowSpin
cd ./H2O/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 950 ; j <= 999 ; j+=5 ))
do
cd ./"$i"."$j"
grep -B 4 " convergence criteria satisfied after" dftoutput | grep "Exc"
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 0 ; j <= 9 ; j+=5 ))
do
cd ./"$i".00"$j"
grep -B 4 " convergence criteria satisfied after" dftoutput | grep "Exc"
cd ..
done
done
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 10 ; j <= 55 ; j+=5 ))
do
cd ./"$i".0"$j"
grep -B 4 " convergence criteria satisfied after" dftoutput | grep "Exc"
cd ..
done
done
cd ..

# back to ~/olypForDistance
cd ..
cd ..
cd ..
