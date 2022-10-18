#!/bin/bash

#query the package location using the which command 
#find the package name using the rpm -qf <location of the package file>

VAR=$1


if [ $# -ne 1 ]; then
    echo "Need an one argument; recommanded to use ./$(basename 0) <arguments>"
    exit 1
else 
     WHICH=`which $VAR`        
fi


if [ $? -eq 0 ]; then 

   PKGE=`rpm -qf $WHICH`
   echo $PKGE
fi

 
