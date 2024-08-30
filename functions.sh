#!/bin/bash

Uid=$(id -u)

if [ $Uid -ne 0 ] 
then
echo "Please run script as Sudo user ; current userid is :$Uid "
else
echo "Script is running now as sudo user : enter package name " 
read pack
fi

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

dnf list installed $pack
validate $? "$pack "
