#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : freetunet.py
#description     :￼config ip for free tunet access
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 2013-09-12 19:34
#version         : 0.1
#usage           : python freetunet.py
#notes           : 
#python_version  : 2.7
#==============================================================================


# # Get IP address for Mac OS X
# import platform
# import subprocess
# commands = {
# 	'Darwin': {'ipv4': "ifconfig  | grep -E 'inet.[0-9]' | grep -v '127.0.0.1' | awk '{ print $2}'", 'ipv6': "ifconfig  | grep -E 'inet6.[0-9]' | grep -v 'fe80:' | awk '{ print $2}'"},
# 	'Linux': {'ipv4': "/sbin/ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'", 'ipv6': "/sbin/ifconfig  | grep 'inet6 addr:'| grep 'Global' | grep -v 'fe80' | awk '{print $3}'"}
# }

# url = "http://net.tsinghua.edu.cn/"
# baidu = "http://www.baidu.com/"

# def ip_addresses(version):
# 	proc = subprocess.Popen(commands[platform.system()][version], shell=True,stdout=subprocess.PIPE)
# 	return proc.communicate()[0].replace('\n', '')

# print ip_addresses('ipv4')

import urllib2, httplib
httplib.HTTPConnection.debuglevel = 1
request = urllib2.Request(baidu)
request.add_header("Accept", "text/html,*/*")
request.add_header("Connection", "Keep-Alive")
opener = urllib2.build_opener()
f = opener.open(request)
if f.url == "http://www.baidu.com/":
	print "WOW"
else:
	print "..."


# from selenium import webdriver
# import time
# browser = webdriver.Firefox() # Get local session of firefox
# browser.get(url) # Load page
# time.sleep(0.5)
# if browser.find_elements_by_class_name("disconnect"):
# 	print "WOW"
# else:
# 	print "..."
# browser.close()