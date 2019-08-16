#!/bin/sh

DIFF_FILE=/home/blair/log/rss/diff

[ -f $DIFF_FILE ] || exit 0

cat $DIFF_FILE | while read line; do

    url=$(echo $line | awk -F ',' '{print $1}')
    title=$(echo $line | awk -F ',' '{print $2}')
    author=$(echo $line | awk -F ',' '{print $3}')

    echo "$url" | mutt -s "$author - $title" -- blair.robert.drummond@gmail.com

done && rm $DIFF_FILE 
