#!/bin/bash

cd ./dftonly
for(( j=0;j<=8;j++ ))
do
	cd ./"$j"
	for(( k=1;k<=2;k++))
	do
		cd ./"$k"
		eiger | grep "Gap :" 
		cd ..
	done
	cd ..
done
