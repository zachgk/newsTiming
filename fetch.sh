DATE=$(date '+%s')
err=0

./genUrls.py

while read -r url filename tail; do
    mkdir -p "data/$filename"
    wget -O "data/$filename/$DATE" "$url" || err=1
done < urls.txt
