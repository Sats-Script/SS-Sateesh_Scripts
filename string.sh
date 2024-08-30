#!/bin/bash

Uid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

echo "Enter package name :"
read pkg
pack1=mysql
pack2=nodejs
pack3=nginx

if [ "$pkg" = "$pack1" ]
then 
echo -e "$G $pkg Installing $N"
else
if test "$pkg" = "$pack2"
then
echo  -e "$G $pkg Installing $N"
else
if [[ "$pkg" == "$pack3" ]]
then
echo  -e "$G $pkg Installing $N"
else
echo -e "$R This Script wont work for entered package $N"
fi
fi
fi

# validate(){
#     if [ $1 -ne 0 ]
#     then
#     echo "$2  installation begins now"
#     installate
#     else
#     echo "$2 is already installed "
#     fi
# }

# installate(){
#     dnf install $pack -y
# }

# check(){
# dnf list installed $pack &>> null.txt
# validate $? "$pack "
# }

# if [ $Uid -ne 0 ] 
# then
# echo -e " $R Please run script as Sudo user ; $Y current userid is :$Uid "
# exit 1
# else
# echo -e " $G Script is running now as sudo user : enter package name $N " 
# read pack
# check $pack
# fi
