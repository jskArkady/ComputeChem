#!/bin/bash

# print NCH, NH3 using HF-olyp and olyp
# HF - already exist

#Energy
echo "===============TOTAL Energy==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total energy      =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total energy      =" olypoutput
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
grep "total energy      =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total energy      =" olypoutput
cd ..
done

# back to ~/olypXCFun
cd ..
cd ..

#Wall time
echo "===============Wall time==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total wall-time" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total wall-time" olypoutput
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
grep "total wall-time" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "total wall-time" olypoutput
cd ..
done

# back to ~/olypXCFun
cd ..
cd ..


#Kinetic E
echo "===============Kinetic E==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "kinetic energy    =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "kinetic energy    =" olypoutput
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
grep "kinetic energy    =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "kinetic energy    =" olypoutput
cd ..
done

# back to ~/olypXCFun
cd ..
cd ..

#Potential E
echo "===============Potential E==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "potential energy  =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "potential energy  =" olypoutput
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
grep "potential energy  =" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "potential energy  =" olypoutput
cd ..
done

# back to ~/olypXCFun
cd ..
cd ..

#Nuc. repul. E
echo "===============Nuc. repul. E==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "nuclear repulsion energy  :" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "nuclear repulsion energy  :" olypoutput
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
grep "nuclear repulsion energy  :" olypoutput
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep "nuclear repulsion energy  :" olypoutput
cd ..
done

# back to ~/olypXCFun
cd ..
cd ..

#Exc
echo "===============Exc==============="
# NCH (1=high, 2=low)
cd ./nch

cd ./hf_olyp # HF-olyp
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep -B 4 " convergence criteria satisfied after" olypoutput | grep "Exc"
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep -B 4 " convergence criteria satisfied after" olypoutput | grep "Exc"
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
grep -B 4 " convergence criteria satisfied after" olypoutput | grep "Exc"
cd ..
done
cd ..

cd ./olyp # olyp only
for (( i = 1 ; i <= 2 ; i++ ))
do
cd ./"$i"
grep -B 4 " convergence criteria satisfied after" olypoutput | grep "Exc"
cd ..
done