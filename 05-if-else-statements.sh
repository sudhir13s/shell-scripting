#!/bin/bash

# If-else-statement script.

# integer comparison operator
# -eq --> if ["$a" -eq "$b"]
# -ne --> if ["$a" -ne "$b"]
# -gt -->
# -ge -->
# -lt -->
# -le -->

# <   --> if (("$a" < "$b"))
# <=  --> if (("$a" <= "$b"))
# >   --> if (("$a" > "$b"))
# >=  --> if (("$a" >= "$b"))

# string comparison operator
# =   --> if ["a" = "b"]
# ==  --> if ["a" == "b"]
# !=  --> if ["a" != "b"]
# <   --> if [["a" < "b"]]
# <=  --> if [["a" <= "b"]]
# >   --> if [["a" > "b"]]
# >=  --> if [["a" >= "b"]]
# -z  --> if [ -z "$a"]

read -p "0. Enter a value in between 10 and 20: " val

if [ "$val" -gt 10 ] && ["$val" -lt 20 ]; then
	echo "$val is greater than 10 and less than 20."
else 
	echo "$val is not in range 10-20."
fi

read -p "1. Enter a value in between 10 and 20: " val
if [ "$val" -gt 10 -a "$val" -lt 20 ]; then
	echo "$val is greater than 10 and less than 20."
else 
	echo "$val is not in range 10-20."
fi

read -p "2. Enter a value in between 10 and 20: " val
if [[ "$val" -gt 10 && "$val" -lt 20 ]]; then
	echo "$val is greater than 10 and less than 20."
else 
	echo "$val is not in range 10-20."
fi
