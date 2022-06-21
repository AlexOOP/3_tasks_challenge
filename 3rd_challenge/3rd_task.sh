#!/bin/bash

# Pre-requisite :  Install jq  -  
# WIN: curl -L -o /usr/bin/jq.exe https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe
# LIN: sudo apt-get update -y; sudo apt-get install -y jq

usage="\n 2 params Required \n\n 1 - inputString \n 2 - keyName to find \n\n"

case $1 in 
	 -h) echo $usage ;; 
	   h) echo $usage ;;
	   help) echo $usage ;;
   esac   

   input=$1
   keyname=$2
   convertSlashToDot="."$(echo $keyname | sed -e 's/[][/]/\./g')
   echo $input | sed -e 's/\(“\|”\)/"/g' | jq $convertSlashToDot | sed 's/"//g' 