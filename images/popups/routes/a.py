#!/usr/bin/python3
import os, sys

img = sys.argv[1]
height = sys.argv[2]
name = img.split('.')[0]
os.system('convert '+img+' -crop 2463x'+height+'+0+0 +repage '+name+'-header.png')
os.system('convert '+img+' -crop 2463x30000+0+'+height+' +repage '+name+'-body.png')
