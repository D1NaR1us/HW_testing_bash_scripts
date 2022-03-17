#!/bin/bash
response=$(curl -LI http://$1 -o /dev/null -w '%{http_code}\n' -s)
echo $response