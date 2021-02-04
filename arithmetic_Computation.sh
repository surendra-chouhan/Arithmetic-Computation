#!/bin/bash

echo "Welcome to Arithmetic Computation and Sorting Program!"

read -p "Enter 3 numbers : " a b c;
echo $a $b $c

Query1=`echo - | awk '{printf "%.2f\n", '$a+$b*$c'}'`
#echo $Query1

Query2=`echo - | awk '{printf "%.2f\n", '$a*$b+$c'}'`
#echo $Query2

Query3=`echo - | awk '{printf "%.2f\n", '$c+$a/$b'}'`
#echo $Query3

Query4=`echo - | awk '{printf "%.2f\n", '$a%$b+$c'}'`
#echo $Query4

declare -A Computation
Computation[a+b*c]=$Query1
Computation[a*b+c]=$Query2
Computation[c+a/b]=$Query3
Computation[a%b+c]=$Query4

echo "Results of all the computation are : " 
for k in ${!Computation[@]}
do
	echo $k " : " ${Computation[$k]}
done
