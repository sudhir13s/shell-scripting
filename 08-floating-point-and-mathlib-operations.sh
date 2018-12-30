#!/bin/bash

#program for arithmetic operation.

read -p "Enter two numbers: " num1 num2

if [[ $num1 =~ ^[+-]?[0-9]*$ && $num2 =~ ^[+-]?[0-9]*$ ]];then
	echo “Numbers are integer”
elif [[ $num1 =~ ^[+-]?[0-9]+\.?[0-9]*$ && $num2 =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];then
	echo “Numbers are float ”
else
	echo “Enter proper numbers.”
fi
# need condition for floating point number.
if [ "$num1" -gt 0 -a "$num2" -gt 0 ]; then
	echo "Number1 + Number2 = $num1+$num2" | bc
	echo "Number1 - Number2 = $num1-$num2" | bc
	echo "Number1 * Number2 = $num1*$num2" | bc
	echo "Number1 / Number2 = scale=2;$num1/$num2"  | bc
	echo "Number1 % Number2 = $num1%$num2" | bc
	echo "sqrt(Number1) = scale=2;sqrt($num1)" | bc -l
	echo "Number1 ^ Number2 = scale=2;$num1^$num2" | bc -l
else
	echo "Entered value $num1 or $num2 is less than or equal to 0."
fi
