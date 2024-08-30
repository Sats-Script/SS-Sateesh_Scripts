#!/bin/bash

Uid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

validate(){
    if [ $1 -ne 0 ]
    then
    echo -e "$Y $2  not installed $N "
    else
    echo -e "$G $2 is removed $N "
    fi
}

check(){
dnf  remove $pack -y 
validate $? "$pack "
}

if [ $Uid -ne 0 ] 
then
echo -e " $R Please run script as Sudo user ; $Y current userid is :$Uid "
exit 1
else
echo -e " $G Script is running now as sudo user : $Y enter package name $N " 
read pack
check $pack
fi
