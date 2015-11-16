#!/usr/bin/env bash

DATE=$(date '+%s')
MYDIR="$(dirname "$(readlink -f "$0")")"
err=0

$MYDIR/genUrls.py $MYDIR

while read -r url filename tail; do
    mkdir -p "$MYDIR/data/$filename"
    wget -O "$MYDIR/data/$filename/$DATE" "$url" &> /dev/null || err=1
done < $MYDIR/urls.txt
