#!/bin/bash

# print the results of onlyDFT cal. of TZVP
# for all Ligand //NCH, CO, H2O, NH3 

#Energy
echo "====================TOTAL Energy===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep "total energy      =" output
		cd ..
	done
	cd ..
done
cd ..

#Wall time
echo "====================Wall time===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep "total wall-time" output
		cd ..
	done
	cd ..
done
cd ..

#Kinetic E
echo "====================Kinetic E===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep "kinetic energy    =" output
		cd ..
	done
	cd ..
done
cd ..

#Potential E
echo "====================Potential E===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep "potential energy  =" output
		cd ..
	done
	cd ..
done
cd ..

#Nuc. repul. E
echo "====================Nuc. repul. E===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep "nuclear repulsion energy  :" output
		cd ..
	done
	cd ..
done
cd ..

#Exc
echo "====================Exc===================="
cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		grep -B 4 " convergence criteria satisfied after" output | grep "Exc"
		cd ..
	done
	cd ..
done
cd ..