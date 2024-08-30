#!/bin/bash

Uid=$(id -u)

if [ Uid -ne 0 ] then
echo "Please run script as administrator $Uid "
else
echo "Script can run in Admin mode now $Uid" 
fi