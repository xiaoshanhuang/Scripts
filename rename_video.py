#!/bin/usr/env python
#-*- coding: utf-8 -*-

import os
import glob

pathname = '/Users/hxs/Downloads/'
ext_range = ['.mkv', '.mp4', '.rmvb']
format_range = ['AAC', 'AC3', '1024x576', '1024X576', 'HDTVrip']
file_list = os.listdir(pathname)
for filename in file_list:
	[name, ext] = os.path.splitext(filename)
	if ext in ext_range:
		newname = ''
		for part in name.split('.'):
			if part.isalnum() and part not in format_range:
				newname = newname + part + '.'
		os.rename(pathname + filename, pathname + newname + ext[1:])