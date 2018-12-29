#!/bin/bash
echo "Enter name: "
read name
echo "Hello $name"

read -p "Enter name: " name
echo "Hello $name"

read -p "Enter last name, first name: " lname fname
echo "Hello $lname, $fname"

echo "Enter 2 names: "
read -a names
echo "Hello, ${names[0]} and ${names[1]}"

read -p "Enter user name: " uname
read -sp "Enter password: " upass
echo
echo "Your user name is: $uname"
echo "Your password is: $upass"


echo "(Using REPLY) What's your name: "
read
echo "Hello $REPLY"
