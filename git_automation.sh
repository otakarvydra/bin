#!/bin/bash

#User info: 
#This script adds files to the local git repository and then pushes them to GitHub. The files in question 
#have to be entered when the script is called and the user is then prompted for a commit message.


clear

for file in $@
do
    git add $file
done

echo 'enter git message'
read message

clear

git commit -m '$message'

git push

clear