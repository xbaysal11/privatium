#!/bin/bash

pubIP="35.245.175.101"
domain="xbaysal11.ml"

user="root"
dstPath="/var/www/"$domain"/html"

FILENAME=$1
scp -C $FILENAME $user@$pubIP:$dstPath
echo "http://"$domain"/"$FILENAME | xclip -i -selection clipboard