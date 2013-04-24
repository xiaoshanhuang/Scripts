#!/bin/bash
for f in *.mkv
do
	fullname="${f%.*}"
	chn_enn_se="${fullname%*.Chi_Eng.*}"
	enn_se="${chn_enn_se#*.}"
	mv $f $enn_se.mkv
done
