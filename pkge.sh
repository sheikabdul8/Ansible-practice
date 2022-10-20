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

FOR=`cat /etc/redhat-release | cut -d " " -f -2`


if [[ "$FOR" == "Red Hat" ]]; then
   echo "This is a redhat server"
   PKGE=`rpm -qf $WHICH`
   echo $PKGE

else
   echo "OS is not Red Hat"
fi

 
