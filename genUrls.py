#!/usr/bin/python

import json

of = open('urls.txt', 'w')

with open('feeds.json') as f:
    feeds = json.load(f);
    for feed in feeds:
        of.write(feed['url'] + ' ' + str(feed['id']) + '\n')

of.close()
