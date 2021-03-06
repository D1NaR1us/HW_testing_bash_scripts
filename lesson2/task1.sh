#!/bin/bash

ssh $2@$1 -i "$3" 'bash' -s << "ENDSSH" > ./task1

DEST=/etc/passwd
DEST2=/etc/shadow

sudo grep -Eiq 'Bob@example' $DEST && sudo grep -Eiq 'Alice@example' $DEST && sudo grep -Eiq 'Carol@example' $DEST
    response1=$( echo $? )
sudo grep -Eiq 'Bob:\$6\$' $DEST2 && sudo grep -Eiq 'Alice:\$6\$' $DEST2 && sudo grep -Eiq 'Carol:\$6\$' $DEST2
    response2=$( echo $? )
if [[ $response1 == 0 ]] && [[ $response2 == 0 ]]
then
    echo "You pass LESSON №2 task №1"
else
    echo "You fail LESSON №2 task №1"
fi

ENDSSH