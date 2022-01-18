#!/usr/bin/env python
import os
import subprocess
import shutil
from StringIO import StringIO

#Calling a different process
diffCommand = subprocess.Popen(['diff', 'a', 'b'],stdout=subprocess.PIPE);
out = diffCommand.stdout.read()
if out == '':
  print 'EMPTY'
else :
  print out

#How to read and parse a ';' delimited file
f = open('long-thing')

outs = f.read().rstrip().split(';')

print outs
f.close()

#The path where my script is
print os.path.realpath(__file__)

#Traversing current directory
for file in os.listdir('.'):
  print "There is a file "+file+" of size "+str(os.stat(file).st_size)
  #check if directory
  if os.path.isdir(file):
    print file+" is directory. Moving on."
  else:
   print "copying to copy"
#make if folder does not exist
   if not os.path.exists("copy"):
      os.mkdir("copy")
   shutil.copy(file, "copy/"+file)

  
