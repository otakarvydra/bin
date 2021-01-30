#!/bin/bash

#User info: 
#This script creates folder $1 in the Engineering Programs directory and in that folder creates file $2 and imports all functions from directory 
#engineering_functions into it. The name of the new directory and the file to be created is inputed with the call of this script. 

clear

mkdir $1 
touch $1/$2

files=engineering_functions_git/*.py

for file in $files
do
    cp $file $1/
done

clear
