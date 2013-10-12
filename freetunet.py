#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : freetunet.py
#description     : config ip for free tunet access
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 2013-10-12 10:02
#version         : 0.7
#usage           : python freetunet.py
#notes           : 
#python_version  : 2.7
#==============================================================================
ipPreFix = '166.111.153.'	# IP prefix for school of medicine
arrSubnetMasks = '255.255.254.0'
arrRouterAddr = '166.111.152.1'
waitTime = 1
connectTimeOut = 5
tunet = "http://net.tsinghua.edu.cn/"
baidu = "http://www.baidu.com/"

# Get IPv4 address for Mac OS X
def getIPAddressOSX():
	import commands
	cmd = "networksetup -getinfo Wi-Fi | grep -Eo 'IP address: [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | awk '{ print $3}'"
	ip = commands.getoutput(cmd)
	return ip

# Use arp -a to determine ipSweepRange
def getIPSweepRange(ipPreFix):
	import commands
	import re
	cmd = "arp -a | grep -E '" + ipPreFix + "' | awk '{ print $2}'"
	occupiedIPs = commands.getoutput(cmd)
	lastIP = re.findall(ipPreFix + "(.*)\)", occupiedIPs)
	avaliableIPs = []
	for i in range(1,255):
		if str(i) not in lastIP:
			avaliableIPs.append(i)
	return avaliableIPs

# Email notification
def pyEmail(subject, body):
	import smtplib
	SMTP_SERVER = 'smtp.163.com'
	SMTP_PORT = 25
	sender = 'hxspyemail@163.com'
	password = 'pythonemail'
	recipient = 'xiaoshanhuang@gmail.com'

	body = "" + body + ""
	headers = ["From: " + sender,
	           "Subject: " + subject,
	           "To: " + recipient,
	           "MIME-Version: 1.0",
	           "Content-Type: text/html"]
	headers = "\r\n".join(headers)
	session = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
	session.ehlo()
	session.starttls()
	session.ehlo
	session.login(sender, password)
	session.sendmail(sender, recipient, headers + "\r\n\r\n" + body)
	session.quit()

# check connection by grab redirected html info
def checkConnection(url, waitCode, connectTimeOut):
	import urllib2, httplib
	import time
	httplib.HTTPConnection.debuglevel = 1
	request = urllib2.Request(url)
	request.add_header("Accept", "text/html,*/*")
	request.add_header("Connection", "Keep-Alive")
	opener = urllib2.build_opener()
	reConnect = True
	connectCount = 0;
	while reConnect and connectCount<connectTimeOut:
		try:
			f = opener.open(request)
		except Exception, e:
			if hasattr(e, 'reason'):
				if e.reason[0] == waitCode:
					# Wait for network connection
					reConnect = True
					connectCount += 1
					time.sleep(waitTime)
				else:
					print e.reason
					reConnect = False
					return False
			else:
				print e
				reConnect = False
				return False
		else:
			reConnect = False
	if connectCount >= connectTimeOut:
		print 'Connection timeout'
		return False
	else:
		f = opener.open(request)
		if f.url == url:
			print 'TUNet Connected'
			return True
		else:
			print 'TUNet disconnected'
			return False

# Search IP via wmi in Windows
def freeIPSearchWmi(ipPreFix, ipSweepRange):
	import wmi
	import time
	import os
	wmiService = wmi.WMI()
	colNicConfigs = wmiService.Win32_NetworkAdapterConfiguration(IPEnabled = True)
	if len(colNicConfigs) < 1:
		print "Can't find Netowrk Adapter"
	objNicConfig = colNicConfigs[0]
	currentIPAddress = objNicConfig.IPAddress
	for ipSweep in ipSweepRange:
		arrIPAddresses = ipPreFix + str(ipSweep)
		intReboot = 0
		subnetMasks = [arrSubnetMasks]
		ipAddress = [arrIPAddresses]
		returnValue = objNicConfig.EnableStatic(IPAddress = ipAddress, SubnetMask = subnetMasks)
		if returnValue[0] == 0:
			print "Current IP:" + ipPreFix + str(ipSweep)
			if checkConnection(baidu, 11001, connectTimeOut):
				print 'WOW'
				pyEmail(arrIPAddresses, 'Windows Connected')
				return True
		else:
			print "Can't change IP address..."
	objNicConfig.EnableStatic(IPAddress = currentIPAddress, SubnetMask = arrSubnetMasks)
	time.sleep(10)
	pyEmail(currentIPAddress, 'Failed')
	return False

# Search IP via networksetup in Mac OS X
def freeIPSearchOSX(ipPreFix, ipSweepRange):
	import commands
	import time
	currentIPAddress = getIPAddressOSX()
	networkService = 'Wi-Fi'
	for ipSweep in ipSweepRange:
		arrIPAddresses = ipPreFix + str(ipSweep)
		# commands.getoutput('networksetup -setmanual ' + networkService + ' ' + arrIPAddresses + ' ' + arrSubnetMasks + ' ' + arrRouterAddr)
		commands.getoutput('networksetup -setmanualwithdhcprouter ' + networkService + ' ' + arrIPAddresses)
		print 'Current IP:' + arrIPAddresses
		if checkConnection(baidu, 8, connectTimeOut):
			print 'WOW'
			pyEmail(arrIPAddresses, 'Mac Connected')
			return True
	commands.getoutput('networksetup -setmanualwithdhcprouter ' + networkService + ' ' + currentIPAddress)
	time.sleep(10)
	pyEmail(currentIPAddress, 'Failed')
	return False

if __name__=="__main__":
	import platform
	import os
<<<<<<< HEAD
	ipRange = range(30,255)
=======
	ipRange = range(50,255)
>>>>>>> e0e83c1919a7541adc123680c63dee1117b128b1
	# availableIPRange = getIPSweepRange(ipPreFix)
	availableIPRange = range(1,255)
	ipSweepRange = [];
	for ip in availableIPRange:
		if ip in ipRange:
			ipSweepRange.append(ip)
	print ipSweepRange
	# ipSweepRange = ipRange
	try:
		system = platform.system()
		if system == 'Darwin':
			freeIPSearchOSX(ipPreFix, ipSweepRange)
		elif system == 'Windows':
			freeIPSearchWmi(ipPreFix, ipSweepRange)
		else:
			print 'Linux?'
	except (KeyboardInterrupt, SystemExit):
		raise
	except Exception, e:
		print e
		os.system('pause')
