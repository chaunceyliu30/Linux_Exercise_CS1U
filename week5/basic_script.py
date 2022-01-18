# !/usr/bin/env python
import sys

# take command-line arguments for the word
word = sys.argv[1]
# read the file
f = open("shakes.txt")
content = f.read()

# function that counts the specified word
def count(word=word):
    cnt = 0
    word_len = len(word)
    i=0
    while i+word_len < len(content):
        if content[i:i+word_len] == word:
            cnt += 1
            i += word_len
        else:
            i += 1
    print("{} appears {} times".format(word,cnt))
# execute the function
count(word)
