#!/bin/bash

echo "Welcome to Arithmetic Computation and Sorting Program!"

read -p "Enter 3 numbers : " a b c;
echo $a $b $c

Query1=`echo - | awk '{printf "%.2f\n", '$a+$b*$c'}'`

Query2=`echo - | awk '{printf "%.2f\n", '$a*$b+$c'}'`

Query3=`echo - | awk '{printf "%.2f\n", '$c+$a/$b'}'`

Query4=`echo - | awk '{printf "%.2f\n", '$a%$b+$c'}'`

declare -A Computation
Computation[a+b*c]=$Query1
Computation[a*b+c]=$Query2
Computation[c+a/b]=$Query3
Computation[a%b+c]=$Query4


counter=1
for i in ${!Computation[@]}
do
	Result_Values[counter++]=${Computation[$i]}
done

echo "Results of all the computation are : " ${Result_Values[@]}


echo "Computation Result in the Descending Order is : "
for k in ${!Computation[@]}
do
	echo $k ":" ${Computation[$k]}
done | sort -nr -k3
