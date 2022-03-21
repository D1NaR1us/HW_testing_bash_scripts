#!/bin/bash

ssh $2@$1 -i "$3" 'bash' -s << "ENDSSH" > ./task3

DEST=/etc/passwd
DEST2=/etc/shadow

grep -Ei 'Bob@example' $DEST && grep -Ei 'Alice@example' $DEST && grep -Ei 'Carol@example' $DEST
    response1=$( echo $? )
echo $response1
grep -Ei 'Bob:\$6\$' $DEST2 && grep -Ei 'Alice:\$6\$' $DEST2 && grep -Ei 'Carol:\$6\$' $DEST2
    response2=$( echo $? )
echo $response2
if [[ $response1 == 0 ]] && [[ $response2 == 0 ]]
then
    echo "You pass LESSON №2 task №1"
else
    echo "You fail LESSON №2 task №1"
fi

ENDSSH