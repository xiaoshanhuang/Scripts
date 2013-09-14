#!/bin/usr/env python
#-*- coding: utf-8 -*-
#title           : sendGmail.py
#description     :￼Send email via Gmail smtp
#author          : Xiaoshan Huang, xiaoshanhuang@gmail.com
#date            : 2013-09-14 21:43
#version         : 0.1
#usage           : python sendGmail.py
#notes           : 
#python_version  : 2.7
#==============================================================================
import smtplib
 
SMTP_SERVER = 'smtp.gmail.com'
SMTP_PORT = 587
 
sender = 'hxspyemail@gmail.com'
password = 'pythonemail'
recipient = 'xiaoshanhuang@gmail.com'
subject = 'Gmail SMTP Test'
body = 'blah blah blah'
 
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