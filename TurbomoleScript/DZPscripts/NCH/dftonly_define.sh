#!/bin/bash
# HighSpin 1 / LowSpin 2
# s-vwn 1 / b-p 2 / b-lyp 3 / pbe 4
# pbe0 5 / b3-lyp 6 / tpssh 7 / tpss 8
# dft only

mkdir dftonly
cd ./dftonly
for(( i=0 ; i<9 ; i++ ))
do
	mkdir "$i"
	cd ./"$i"
	for(( k=1 ; k<=2 ; k++ ))
	do
		mkdir "$k"
		cd ./"$k"
		cp ~/DZP/nch/"$k".xyz ./
		x2t "$k".xyz > coord
		if [ "$k" -eq 1 ] #highspin
		then
		if [ "$i" -eq 0 ]
		then # HF
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\n*\n' | define
		elif [ "$i" -eq 1 ]
		then # DFT
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc s-vwn\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 2 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc b-p\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 3 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc b-lyp\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 4 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc pbe\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 5 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc pbe0\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 6 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc b3-lyp\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 7 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpssh\ngrid 6\n*\n*\n' | define
		else [ "$i" -eq 8 ]
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\nu 4\n*\n\ndft\non\nfunc tpss\ngrid 6\n*\n*\n' | define
		fi
		fi

		if [ "$k" -eq 2 ] #lowspin
		then
		if [ "$i" -eq 0 ]
		then # HF
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\n*\n' | define
		elif [ "$i" -eq 1 ]
		then # DFT
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc s-vwn\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 2 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc b-p\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 3 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc b-lyp\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 4 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc pbe\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 5 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc pbe0\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 6 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc b3-lyp\ngrid 6\n*\n*\n' | define
		elif [ "$i" -eq 7 ]
		then
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpssh\ngrid 6\n*\n*\n' | define
		else [ "$i" -eq 8 ]
		printf '\n\na coord\nired\n*\nb all DZP\n*\neht\n\n2\nn\ns\n*\n\ndft\non\nfunc tpss\ngrid 6\n*\n*\n' | define
		fi
		fi
		sed -i 's/$scfiterlimit       30/$scfiterlimit        2000/' control
		sed -i 's/$scfconv        7/$scfconv   8\n$denconv 1.0d-8/' control
		sed -i 's/$scfiterlimit        30/$scfiterlimit        2000/' control
		sed -i 's/$scfconv   6/$scfconv   8\n$denconv 1.0d-8/' control
		mkdir backup
		cp * backup
		cd ..
	done
	cd ..
done
