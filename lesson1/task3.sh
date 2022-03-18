#!/bin/bash

ssh $2@$1 -i "$3" 'bash' -s << "ENDSSH" > ./task3

sudo grep 'net.ifnames=0\ biosdevname=0' /boot/grub2/grub.cfg >/dev/null
response=$( echo $? )

if [[ $response == 0 ]]
then
  echo "You pass LESSON №1 task №3"
else
  echo "You fail LESSON №1 task №3"
fi

ENDSSH