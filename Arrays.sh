#!/bin/bash

#here i am writing small Arrays
x=$1 
y=$2
z=$3
Fruits=("$x" "$y" "$z")
# echo "Please enter first fruit name"
# read 
# echo "Please enter Second fruit name"
# echo "Please enter Third fruit name"

Echo "entered fruit names are ${Fruits[@]}"
