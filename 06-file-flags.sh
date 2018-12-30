#!/bin/bash

# script for file flags test.

# file flags
# -e --> to check if file exists.
# -f --> to check if it's a file.
# -d --> to check if it's a directory.
# -b --> to check if a file is a block special (binary) file.
# -c --> to check if a file is a character special file.
# -s --> to check if a file is empty.
# -r --> to check if a file has read permission.
# -w --> to check if a file has write permission.
# -x --> to check if a file has execute permission.

echo -e "Enter file name: \c"
read file_name

if [ -e $file_name ]; then
 	echo "$file_name exists."
 	if [ -s $file_name ]; then
  		echo "$file_name is not empty."
 		if [ -f $file_name ]; then
  			echo "$file_name is a file."
  			if [[ $file_name =~ ^\. ]]; then
  				echo "$file_name is hidden file."
  			fi
 			if [ -b $file_name ]; then
  				echo "$file_name is a block special (binary) file."
  			fi
 			if [ -c $file_name ]; then
  				echo "$file_name is a character special file."
  			fi
		elif [ -d $file_name ]; then
			echo "$file_name is a directory."
			if [[ $file_name =~ ^\. ]]; then
  				echo "$file_name is hidden directory."
  			fi
		fi
		if [ -r $file_name ]; then
			echo "$file_name has read permission."
		else	
			echo "$file_name does not have read permission."
		fi
		if [ -w $file_name ]; then
			echo "$file_name has write permission."
		else	
			echo "$file_name does not have write permission."
		fi
		if [ -x $file_name ]; then
			echo "$file_name has execute permission."
		else	
			echo "$file_name does not have execute permission."
		fi
	else
		echo "$file_name is empty."
	fi
else
	echo "$file_name does not exists."
fi
