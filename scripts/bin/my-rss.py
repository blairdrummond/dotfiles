#!/usr/bin/python3

import feedparser
import time
import sys
import csv

feeds = {
    "Scott Aaronson": "http://www.scottaaronson.com/blog/?feed=rss2",
    "Paul Graham": "http://www.aaronsw.com/2002/feeds/pgessays.rss"
}

cache = "/home/blair/rss/seen"
diff = "/home/blair/rss/diff"

""" Get new feeds """
everything = set()

for f in feeds:
    d = feedparser.parse(feeds[f])
    while d['bozo'] == 1:
        d = feedparser.parse(feeds[f])
        sys.stderr.write('Failed to connect. Retrying in 30 seconds.')
        time.sleep(30)

    i = 0
    for e in d['entries']:
        if i != 0:
            entry = (e['link'], e['title'], f)
            everything.add(entry)
        i = 1


""" Check old feeds """
with open(cache, 'r') as f:
    reader = csv.reader(f)
    prev = [tuple(row) for row in reader]

""" Write the difference to file """
with open(diff, 'w') as f:
    writer = csv.writer(f)
    writer.writerows(list(everything - set(prev)))

""" Update cache """
with open(cache, 'w') as f:
    writer = csv.writer(f)
    writer.writerows(list(everything))
