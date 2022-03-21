#!/bin/bash

ssh $2@$1 -i "$3" 'bash' -s << "ENDSSH" > ./task3

DEST=/etc/passwd
DEST2=/etc/shadow

grep -Eiq 'Bob@example' $DEST && grep -Eiq 'Alice@example' $DEST && grep -Eiq 'Carol@example' $DEST
    response1=$( echo $? )
grep -Eiq 'Bob:\$6\$' $DEST2 && grep -Eiq 'Alice:\$6\$' $DEST2 && grep -Eiq 'Carol:\$6\$' $DEST2
    response2=$( echo $? )
if [[ $response1 == 0 ]] && [[ $response2 == 0 ]]
then
    echo "You pass LESSON №2 task №1"
else
    echo "You fail LESSON №2 task №1"
fi

ENDSSH