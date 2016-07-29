#!/bin/bash

# print the results of HF-DFT cal. of DZP
# for all Ligand //NCH, CO, H2O, NH3 

#Energy
echo "====================TOTAL Energy===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep "total energy      =" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..

#Wall time
echo "====================Wall time===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep "total wall-time" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..

#Kinetic E
echo "====================Kinetic E===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep "kinetic energy    =" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..

#Potential E
echo "====================Potential E===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep "potential energy  =" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..

#Nuc. repul. E
echo "====================Nuc. repul. E===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep "nuclear repulsion energy  :" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..

#Exc
echo "====================Exc===================="
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( j=1;j<=8;j++ ))
	do
		cd ./"$j"
		for(( k=1;k<=2;k++))
		do
			cd ./"$k"
			grep -B 4 " convergence criteria satisfied after" dftoutput | grep "Exc"
			cd ..
		done
		cd ..
	done
	cd ..
done
cd ..