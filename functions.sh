#!/bin/bash

Uid=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
    echo "$2  installation begins now"
    installate
    else
    echo "$2 is already installed "
    fi
}

installate(){
    dnf install $pack -y
}

check(){
dnf list installed $pack 2>> null.txt
validate $? "$pack "
}

if [ $Uid -ne 0 ] 
then
echo "Please run script as Sudo user ; current userid is :$Uid "
exit 1
else
echo "Script is running now as sudo user : enter package name " 
read pack
check $pack
fi




