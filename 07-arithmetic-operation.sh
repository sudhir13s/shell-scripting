#!/bin/bash

#program for arithmetic operation.

read -p "Enter two numbers: " num1 num2

if [ "$num1" -gt 0 -a "$num2" -gt 0 ]; then
	echo "Number1 + Number2 = " $(( $num1 + $num2 ))
	echo "Number1 - Number2 = " $(( $num1 - $num2 ))
	echo "Number1 * Number2 = " $(( $num1 * $num2 ))
	echo "Number1 / Number2 = " $(( $num1 / $num2 ))
	echo "Number1 % Number2 = " $(( $num1 % $num2 ))

	# with expr.
	echo "With expr command evaluation."
	echo "Number1 + Number2 = " $(expr $num1 + $num2 )
	echo "Number1 - Number2 = " $(expr $num1 - $num2 )
	echo "Number1 * Number2 = " $(expr $num1 \* $num2 )
	echo "Number1 / Number2 = " $(expr $num1 / $num2 )
	echo "Number1 % Number2 = " $(expr $num1 % $num2 )
else
	echo "Entered value $num1 or $num2 is less than or equal to 0."
fi
