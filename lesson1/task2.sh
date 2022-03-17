#!/bin/bash

response=$(curl -LI http://$1 -o /dev/null -w '%{http_code}\n' -s)

if [[ $response != 200 ]]
then
    echo "You pass LESSON №1 task №2" > ./task2
else 
    echo "You fail with LESSON №1 task №2" > ./task2
fi