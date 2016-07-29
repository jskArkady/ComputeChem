#!/bin/bash

cd ./dftonly
for(( i=0 ; i<9 ; i++ ))
do
	cd ./"$i"
	for(( k=1 ; k<=2 ; k++ ))
	do
		cd ./"$k"
		dscf > output
		cd ..
	done
	cd ..
done
