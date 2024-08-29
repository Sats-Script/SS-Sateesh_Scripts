#!/bin/bash

x=$0
X=$?
y=$#
z=$@
a=$$
sleep 5 &
A=$!




echo " Running script name $x"
echo "Previous command is $X"
echo " number of variables given $y"
echo " variables given $z"
echo "present running PID $a"
echo "last running PID $A"
