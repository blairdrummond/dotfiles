#!/usr/bin/python3

"""
Detect email-tracking
=====================

Only scan html emails. Detect if any images are suspiciously
small, as these are likely to be trackers.

    Output:

    > return 0 if not a tracker,
    > return 1 and echo warning if something suspicious is detected.

"""

import sys

if len(sys.argv) < 2:
    infile = "/home/blair/desk/test.html"
else:
    infile = sys.argv[1]

try:
    with open(infile) as f:
        text = f.read()
except UnicodeDecodeError:
    encodings = ['utf-8', 'windows-1250', 'windows-1252']
    for e in encodings:
        try:
            with open(infile, encoding=e) as f:
                text = f.read()
        except UnicodeDecodeError:
            # print('got unicode error with %s , trying different encoding' % e)
            continue

try:
    text
except NameError:
    print("Error Opening file")
    exit(1)

suspicious_lines = []


from bs4 import BeautifulSoup as BS

# Spot weird images


def is_small(s):
    if s == "auto":
        return False
    else:
        try:
            return float(s) < 2
        except:
            # Be generous?
            return False


def img_ok(imgtag):
    # print(imgtag.attrs)
    if not 'src' in imgtag.attrs:
        return True

    if 'width' in imgtag.attrs and is_small(imgtag.attrs['width']):
        suspicious_lines.append(imgtag['src'])
        return False

    if 'height' in imgtag.attrs and is_small(imgtag.attrs['height']):
        suspicious_lines.append(imgtag['src'])
        return False

    return True


soup = BS(text, "html.parser")
clean = all(img_ok(imgtag) for imgtag in soup.find_all('img'))

if not clean:
    print("<p>[-- This email seems to have a tracker --]</p>")
    # print("\n")
    # for line in suspicious_lines:
    #     print("<p> > src=%s </p>" % line)
    # print("<p>[[ content below ]]</p>")


    try:
        with open("/home/blair/mail/trackers", 'a') as f:
            for line in suspicious_lines:
                f.write(line)
                f.write('\n')
    
        for line in suspicious_lines:
            before = text
            text = text.replace(line, '')

    except UnicodeDecodeError:
        encodings = ['utf-8', 'windows-1250', 'windows-1252']
        for e in encodings:
            try:
                with open("/home/blair/mail/trackers", 'a') as f:
                    for line in suspicious_lines:
                        f.write(line)
                        f.write('\n')
            
                for line in suspicious_lines:
                    before = text
                    text = text.replace(line, '')

            except UnicodeDecodeError:
                # print('got unicode error with %s , trying different encoding' % e)
                continue

print(text)
