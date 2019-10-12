#!/bin/bash

pubIP="35.245.175.101"
domain="xbaysal11.ml"

user="root"
dstPath="/var/www/"$domain"/html"

machineName=`hostname`
fileExtension=".png"
randomSym=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 7 | head -n 1)
FILENAME=$machineName"-"$randomSym$fileExtension

import $FILENAME
scp -C $FILENAME $user@$pubIP:$dstPath
echo "http://"$domain"/"$FILENAME | xclip -i -selection clipboard
rm $FILENAME