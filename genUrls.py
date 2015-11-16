#!/usr/bin/python

import json
import sys

path = sys.argv[1]

of = open(path + '/urls.txt', 'w')

with open(path + '/feeds.json') as f:
    feeds = json.load(f);
    for feed in feeds:
        of.write(feed['url'] + ' ' + str(feed['id']) + '\n')

of.close()
