#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : freetunet.py
#description     : config ip for free tunet access
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 2013-09-13 23:11
#version         : 0.2
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

# def ip_addresses(version):
# 	proc = subprocess.Popen(commands[platform.system()][version], shell=True,stdout=subprocess.PIPE)
# 	return proc.communicate()[0].replace('\n', '')

# print ip_addresses('ipv4')

import os
import urllib2, httplib
import time
url = "http://net.tsinghua.edu.cn/"
baidu = "http://www.baidu.com/"

def openConnection(request, opener):
	try:
		f = opener.open(request)
	except urllib2.URLError, e:
		if e.reason[0] == 11001:
			return 1
		else:
			return 0

def checkBaidu():
	httplib.HTTPConnection.debuglevel = 1
	request = urllib2.Request(baidu)
	request.add_header("Accept", "text/html,*/*")
	request.add_header("Connection", "Keep-Alive")
	opener = urllib2.build_opener()
	timeOut = 5
	count = 0
	while openConnection(request, opener) and (count<timeOut):
		count += 1
		time.sleep(2)
	if count < timeOut:
		f = opener.open(request)
		if f.url == baidu:
			print 'Connected'
			return True
		else:
			return False
	else:
		return False


import wmi

wmiService = wmi.WMI()
colNicConfigs = wmiService.Win32_NetworkAdapterConfiguration(IPEnabled = True)
if len(colNicConfigs) < 1:
    exit()
objNicConfig = colNicConfigs[0]

ipFix = '166.111.153.'
arrSubnetMasks = ['255.255.254.0']
for ipSweep in range(1, 232):
	arrIPAddresses = [ipFix + str(ipSweep)]
	intReboot = 0
	returnValue = objNicConfig.EnableStatic(IPAddress = arrIPAddresses, SubnetMask = arrSubnetMasks)
	if returnValue[0] == 0:
		print "Current IP:"
		print arrIPAddresses
		# os.system('pause')
		if checkBaidu():
			print 'WOW'
			# os.system('pause')
			exit()
	elif returnValue[0] == 1:
	    print "Reboot"
	    intReboot += 1
	else:
	    print "Error"

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
