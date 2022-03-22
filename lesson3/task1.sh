#!/bin/bash

curl ftp://$1/pub/ --user ftp:ftp -o testftp

response1=$( echo $? )

echo $response1
echo "test test" > testuploadftp

curl -T testuploadftp ftp://$1/pub/upload/ --user ftp:ftp

response2=$( echo $? )

echo $response2

if [[ $response1 == 0 ]] && [[ $response2 == 0 ]]
then
    echo "You pass LESSON №3"
else
    echo "You fail LESSON №3"
fi