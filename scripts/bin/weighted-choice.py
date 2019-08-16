#!/usr/bin/python3

import random
import sys
import math

def transform(n):
    # return math.log(n)
    return math.sqrt(n)

t = sys.stdin.readlines()

l = [(transform(int(a[0])), " ".join(a[1:]).strip())
     for a in [b.split(" ") for b in t]]

s = sum(list(zip(*l))[0])
l = [(a / s, b) for (a, b) in l]

r = random.uniform(0, 1)
random.shuffle(l)

acc = 0
for (a, b) in l:
    if a + acc > r:
        print(b)
        exit(0)
    else:
        acc += a
