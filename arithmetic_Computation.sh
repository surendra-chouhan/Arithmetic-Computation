#!/bin/bash -x

echo "Welcome to Arithmetic Computation and Sorting Program!"

read -p "Enter 3 numbers : " a b c;
echo $a $b $c

Query1=`echo - | awk '{printf "%.2f\n", '$a+$b*$c'}'`
echo $Query1

Query2=`echo - | awk '{printf "%.2f\n", '$a*$b+$c'}'`
echo $Query2
