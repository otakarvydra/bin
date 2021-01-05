#!/bin/bash

#User info:
#This script removes empty files (excluding spreadsheets) in the child directories of a parent directory, 
#the names of the empty files that have been deleted will be stored in file empty_files.txt
#in the parent directory. It is crucial that only folders will be in the parent directory and 
#that only the files themselves will be in the child folders, otherwise this script will not work. 

clear

echo 'This script removes empty files (excluding spreadsheets) in the child directories of a parent directory, 
the names of the empty files that have been deleted will be stored in a file 
empty_files.txt in the parent directory'

echo '
For more information visit C/Users/Otakar Jan Vydra/bin/sort_1.sh'

echo '
Enter the name of the parent directory'

read parent_directory

for folder in $parent_directory/*
do
    for filename in $folder/* 
    do       
        a=$(wc -w $filename)  
        read -a word_count <<< $a     
        if [ $word_count -eq 0 ]
        then
            echo  $filename >> $parent_directory/empty_files.txt
            rm $filename
        fi
    done
done

clear

echo 'script execution successful, if empty_files.txt was not created, there are no empty files'
