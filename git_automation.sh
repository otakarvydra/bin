#!/bin/bash

#User info: 
#This script adds files to the local git repository and then pushes them to GitHub. The files in question 
#have to be entered when the script is called, a commit message 'file modified' is used. 


clear

for file in $@
do
    git add $file
done

clear

git commit -m 'file modified'

clear

git push

clear