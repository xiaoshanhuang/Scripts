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
from bs4 import BeautifulSoup
from selenium import webdriver
from time import sleep
import os
import re

cmd = "pandoc temp.md -o temp.html -s --mathjax"
os.system(cmd)

# file = open('temp.html','r')
# html = file.read()
# print html

driver = webdriver.Chrome()
driver.get('file:///Users/hxs/Desktop/temp.html')
sleep(5)
html = driver.page_source
driver.quit()

soup = BeautifulSoup(html)

invalidTags = ['applet','base','basefont','bgsound','blink','body','button','dir','embed','fieldset','form','frame','frameset','head','html','iframe','ilayer','input','isindex','label','layer,','legend','link','marquee','menu','meta','noframes','noscript','object','optgroup','option','param','plaintext','script','select','style','textarea','xml']
invalidTagsToReplace = ['nobr']
invalidAttrs = ['id','class','onclick','ondblclick','on*','accesskey','data','dynsrc','tabindex','aria-readonly','role']

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

body =  '<?xml version="1.0" encoding="UTF-8"?>\n'
body += '<!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd">\n'
body += '<en-note>%s</en-note>' % soup.prettify().encode('utf-8')

file = open("enml.html", "w")
file.write(body)
file.close()