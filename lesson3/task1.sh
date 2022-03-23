#!/bin/bash

lftp -e mput ftp://$1/pub/

response1=$( echo $? )

echo $response1
echo "test test" > testuploadftp

lftp -e mget ftp://$1/pub/upload/

response2=$( echo $? )

echo $response2

if [[ $response1 == 0 ]] && [[ $response2 == 0 ]]
then
    echo "You pass LESSON №3" > ./task1
else
    echo "You fail LESSON №3" > ./task1
fi