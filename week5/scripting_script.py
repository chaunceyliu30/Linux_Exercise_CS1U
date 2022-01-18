# !/usr/bin/env python
import os
# define a list of words need to count
words_list = ["love", "thee", "to", "eternal"]
# iterate through each word and execute basic_script.py
for word in words_list:
    os.system("python3 basic_script.py {}".format(word))
