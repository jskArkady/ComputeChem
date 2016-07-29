#!/bin/bash

# print the results of HF-olyp cal. of CO

#Energy
echo "===============TOTAL Energy==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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

#Wall time
echo "===============Wall time==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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

#Kinetic E
echo "===============Kinetic E==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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

#Potential E
echo "===============Potential E==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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

#Nuc. repul. E
echo "===============Nuc. repul. E==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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

#Exc
echo "===============Exc==============="
#HighSpin
cd ./CO/HS

cd ./dftdft # HF-olyp,

cd ./olyp # HF-olyp
for (( i = 2 ; i <= 2 ; i++ ))
do
for (( j = 200 ; j <= 325 ; j+=5 ))
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
cd ./CO/LS

cd ./dftdft # HF-olyp, 

cd ./olyp # HF-olyp
for (( i = 1 ; i <= 1 ; i++ ))
do
for (( j = 850 ; j <= 955 ; j+=5 ))
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
