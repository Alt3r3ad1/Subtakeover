#!/bin/bash
if [[ $1 = ""||$2 = "" ]]; then
echo "Subtakeover by:Alt3r3ad1"
echo "Method for use: ./Subtakeover.sh 'target.com' 'wordlist.txt'"
else
for subdomain in $(cat $2);
do
host -t cname $subdomain.$1 | grep "alias for"
done
fi
