#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : .py
#description     : 
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 
#version         : 0.1
#usage           : python .py
#notes           : 
#python_version  : 2.7
#==============================================================================

import re
from bs4 import BeautifulSoup

invalidTags = ['applet','base','basefont','bgsound','blink','body','button','dir','embed','fieldset','form','frame','frameset','head','html','iframe','ilayer','input','isindex','label','layer,','legend','link','marquee','menu','meta','noframes','noscript','object','optgroup','option','param','plaintext','script','select','style','textarea','xml']
invalidTagsToReplace = ['nobr']
invalidAttrs = ['id','class','onclick','ondblclick','on*','accesskey','data','dynsrc','tabindex','aria-readonly','role']




soup = BeautifulSoup(open('temp.html'))
soup = BeautifulSoup(soup.html.body.encode_contents())

[tag.decompose() for tag in soup.find_all(attrs={'id' : re.compile(r'^MathJax_')})]
# [tag.replaceWithChildren() for tag in soup.find_all(attrs={'class' : re.compile(r'^MathJax')})]
for tag in soup():
	for attr in invalidAttrs:
		del tag[attr]
	if tag.name in invalidTags:
		tag.decompose()
	if tag.name in invalidTagsToReplace:
		tag.replaceWithChildren()
print soup.prettify().encode('utf-8')

 
