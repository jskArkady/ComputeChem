#!/bin/bash

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
			grep "total  cpu-time" dftoutput
			cd ..
		done
		cd ..
	done
	cd ..
done
