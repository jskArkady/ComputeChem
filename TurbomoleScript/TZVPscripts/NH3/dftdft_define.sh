#!/bin/bash
#HF 0 / ( HighSpin 1 / LowSpin 2 )
#s-vwn 1 / b-p 2 / b-lyp 3 / pbe 4
#pbe0 5 / b3-lyp 6 / tpssh 7 / tpss 8
#for dft-dft

mkdir dftdft
cd ./dftdft
for(( i=0 ; i<9 ; i++ ))
do
	mkdir "$i"
	cd ./"$i"
	for(( j=1 ; j<=8 ; j++ ))
	do
		mkdir "$j"
		cd ./"$j"
		for(( k=1 ; k<=2 ; k++ ))
		do
			mkdir "$k"
			cd ~/nh3/dftonly/"$i"/"$k"
			cp * ~/nh3/dftdft/"$i"/"$j"/"$k"
			cd ~/nh3/dftdft/"$i"/"$j"/"$k"
			if [ "$j" -eq 1 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc s-vwn\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 2 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc b-p\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 3 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc b-lyp\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 4 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 5 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc pbe0\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 6 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\n*\n*\n' | define
			elif [ "$j" -eq 7 ]
			then
			printf '\n\n\n\n\n\ndft\non\nfunc tpssh\ngrid 6\n*\n*\n' | define
			else [ "$j" -eq 8 ]
			printf '\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\n*\n*\n' | define
			fi
			sed -i 's/$scfiterlimit        2000/$scfiterlimit        1/' control
			sed -i 's/$scfconv   6/$scfconv   8/' control
			mkdir backup
			cp * backup
			cd ..
		done
		cd ..
	done
	cd ..
done
