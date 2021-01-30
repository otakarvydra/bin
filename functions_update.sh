#!/bin/bash

#User info: 
#This script imports all functions from engineering_functions_git into all directories in the parent engineering_programs directory. 

clear

files=engineering_functions_git/*.py
directories=/d/engineering_programs/*

for file in $files
do
    for directory in $directories
    do
        cp $file $directory/ 
    done
done

clear
