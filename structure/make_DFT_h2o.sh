#!/bin/bash


for (( i = 1 ; i<=1 ; i++ ))
do
for (( j = 9 ; j<=9 ; j++ ))
do
for (( k = 5 ; k<=9 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"


#DFT
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_2
cp input/* DFT_2
cd DFT_2
printf '\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_1
cp input/* DFT_1
cd DFT_1
printf '\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_4
cp input/* DFT_4
cd DFT_4
printf '\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_3
cp input/* DFT_3
cd DFT_3
printf '\n\n\n\n\n\ndft\non\nfunc s-vwn\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_5
cp input/* DFT_5
cd DFT_5
printf '\n\n\n\n\n\ndft\non\nfunc pbe0\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_6
cp input/* DFT_6
cd DFT_6
printf '\n\n\n\n\n\ndft\non\nfunc b-p\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_7
cp input/* DFT_7
cd DFT_7
printf '\n\n\n\n\n\ndft\non\nfunc bh-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_8
cp input/* DFT_8
cd DFT_8
printf '\n\n\n\n\n\ndft\non\nfunc b-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_9
cp input/* DFT_9
cd DFT_9
printf '\n\n\n\n\n\ndft\non\nfunc tpssh\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input

done
done
done
done


for (( i = 2 ; i<=2 ; i++ ))
do
for (( j = 0 ; j<=0 ; j++ ))
do
for (( k = 0 ; k<=5 ; k++ ))
do
for (( l = 0 ; l<=9 ; l = l+5 ))
do
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_2
cp input/* DFT_2
cd DFT_2
printf '\n\n\n\n\n\ndft\non\nfunc tpss\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_1
cp input/* DFT_1
cd DFT_1
printf '\n\n\n\n\n\ndft\non\nfunc pbe\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_4
cp input/* DFT_4
cd DFT_4
printf '\n\n\n\n\n\ndft\non\nfunc b3-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_3
cp input/* DFT_3
cd DFT_3
printf '\n\n\n\n\n\ndft\non\nfunc s-vwn\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_5
cp input/* DFT_5
cd DFT_5
printf '\n\n\n\n\n\ndft\non\nfunc pbe0\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_6
cp input/* DFT_6
cd DFT_6
printf '\n\n\n\n\n\ndft\non\nfunc b-p\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_7
cp input/* DFT_7
cd DFT_7
printf '\n\n\n\n\n\ndft\non\nfunc bh-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_8
cp input/* DFT_8
cd DFT_8
printf '\n\n\n\n\n\ndft\non\nfunc b-lyp\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input
cd ~/SPIN/metalcomplex/Fecomplex/OPTI/Fe_H2O/"$i"."$j""$k""$l"
mkdir DFT_9
cp input/* DFT_9
cd DFT_9
printf '\n\n\n\n\n\ndft\non\nfunc tpssh\ngrid 6\nq\nq\n' | define
sed -i 's/$scfconv   6/$scfconv   6\n\n/' control
sed -i 's/$scfiterlimit       30/$scfiterlimit       800/' control
mkdir input
cp * input

done
done
done
done

