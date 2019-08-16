#!/bin/python3

from newspaper import Article
import sys
import os

url = sys.argv[1]

if url.startswith('https://t.co/'):
    import requests
    r = requests.head(url, allow_redirects=True)
    url = r.url

# url = 'https://www.theatlantic.com/politics/archive/2017/08/trump-untethered/537354/'

a = Article(url, keep_article_html=True)

a.download()
a.parse()

try:
    paper = a.meta_data.get('og')['site_name']
except:
    paper = a.meta_data['site_name']


if paper:
    folder = '/home/blair/log/news/{}/'.format(paper)
else:
    folder = '/home/blair/log/news/unknown/'

if not os.path.exists(folder):
    os.makedirs(folder)


if paper:
    paper = "<h1 class='paper'>{}</h1>".format(paper)


try:
    timestamp = a.publish_date.strftime("%Y-%m-%d")
    date = a.publish_date.strftime("%A, %B %d, %Y")
except:
    try:
        import datetime
        d = datetime.datetime.strptime(a.meta_data['pubdate'],"%Y%m%d")
        timestamp = d.strftime("%Y-%m-%d")
        date = d.strftime("%A, %B %d, %Y")
    except:
        timestamp = "UNKNOWN"
        date = "UNKNOWN"
        
up = "<a href='/home/blair/log/news/'>Go Up</a>"
title = '<h1>{}</h1>'.format(a.title)
date = "<p>{}</p>".format(date)
authors = "<p class='authors'>{}</p>".format(", ".join(a.authors))
description = "<blockquote>{}</blockquote>".format(a.meta_description)
text = a.article_html
url = '<a>{}</a>'.format(url)

body = "\n".join([paper, up, date, "<hr>", title, authors,
                  description, text, "<hr>", url]).replace("’", "'")


filename = folder + '{}-{}.html'.format(timestamp, a.title)
with open(filename, 'w') as f:
    f.write(body)

# To write to pdf
# from pypandoc import convert_text
# convert_text(s, 'html', format="html", outputfile='{}.html'.format(a.title))

print(filename)
