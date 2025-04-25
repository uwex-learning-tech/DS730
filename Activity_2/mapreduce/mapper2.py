#!/usr/bin/python3.6

import sys
import re

line = sys.stdin.readline()
#pattern to check for all words with no whitespace in them
pattern = re.compile("[^\s]+")
while line: 
    for word in pattern.findall(line):
        #loop through word and get all consecutive characters
        if len(word) >= 2:
            #if the word is "a", there is no consecutive character
            #len(word) must be 2 or more.
            for i in range(2, len(word)+1):
                print(str(len(word))+"\t"+word[i-2:i])
    line = sys.stdin.readline() 
