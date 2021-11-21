#!/bin/bash
# check does the user exist 
username="auser"

grep $username /etc/passwd

if [ $? -eq 0 ]; then
    echo "yes the user exists"
else
    echo "No, the user does not exist"
fi
#check does the directory exist 

dir="folderX"

dircheck=home/auser/*

for folder in $dircheck

do

if [ -d $dir ]

then

echo "Folder exists"

else

echo "Folder does not exist"

fi

done

# check owner 
 
 chls=`stat folderX` 
 
 uname2="$(stat --format '%U' "$1")"
 
 if [ "x${uname2}" == "x${USER}" ];
 
 then

 echo "Right owner"

 elif [ "x${uname2}" != "x${USER}" ]

 then

 sudo chown -R auser folderX
 
 fi
 


