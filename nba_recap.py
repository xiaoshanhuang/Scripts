#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : nba_recap.py
#description     : 
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 2013-12-17 16:06
#version         : 0.2
#usage           : python nba_recap.py
#notes           : get nba.com daily recap *.mp4 address
#python_version  : 2.7
#==============================================================================
import urllib2
import gzip
from StringIO import StringIO
import HTMLParser
import datetime

today = datetime.date.today() - datetime.timedelta(days = 1)
today = filter(str.isdigit, today.isoformat())
print today
url = 'http://www.nba.com/gameline/' + today
videoPrefix = 'http://nba.cdn.turner.com/nba/big/'
videoSuffix = '_1280x720.mp4'

class VideoAddrParser(HTMLParser.HTMLParser):
    def handle_starttag(self, tag, attrs):
        if tag == 'a':
            for name,value in attrs:
                if name == 'href' and '/video/games/' in value:
                # for playoffs
                # if name == 'href' and '/video/channels/playoffs/' in value:
                    print value.replace('/video/', videoPrefix).replace('/index.html', videoSuffix)
req = urllib2.Request(url)
response = urllib2.urlopen(req)
the_page = response.read()
parser = VideoAddrParser()
parser.feed(the_page)
parser.close()