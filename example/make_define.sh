#!/bin/bash

#for (( i = 35 ; i <=47 ; i++ ))
#do
#mkdir "$i"
#cp "$i".xyz "$i"/
#cd "$i"
#x2t "$i".xyz > coord
#printf '\n\na coord\nired\n*\nb all 6-31G**\n*\neht\n\n\nn\ns\n*\n\ndft\non\nfunc b3-lyp\ngrid 6\n*\n*\n' | define
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
sed -i 's/$scfconv        7/$scfconv   8\n\n$denconv   1.0d-8/' control
#mkdir input
#cp * input
#cd ..

#done
