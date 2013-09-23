#! /bin/bash

# Batch Convert Script by Beterhans based on FFMPEG
# The Purpose of this Script is to convert any video file to mp4 format
# which most hardware player like iPhone/iPod PS3 Xbox360 could play.
# you can even convert to mkv with h.264 + aac for further process
# this script only convert necessary tracks if the video is already
# in H.264 format it won't convert it save your great time! and quality.

# if you want to make multi-track audio/video/sub mp4 you should convert
# to mkv and then use a MAC OS X app called "mp4tools"
# to mix them down into m4v

# Put all video files need to be converted in a folder!
# the name of files must not have " " Space!
# Rename the File if contain space 


# Variable used
# indir
# ffversion the version if your ffmpeg
# outmode is out put for mkv or mp4
# outformat is used by ffmpeg
# vcodec acodec for ffmpeg

# working mode
outmode=$1

# Target dir
indir=$2
cd "$indir"
if mkdir -p output
	then
	 echo "\nUsing $indir/output as Output Folder"
	else
	 echo "\n\nErr: Check you have the rights to write in $indir ?"
	 exit
fi


# check output mode
if [ $outmode = "mp4" ] || [ $outmode = "mkv" ]
	then 
	echo "\nWORKING MODE $outmode"
	else
	echo "$outmode is NOT a Correct target format\nYou need to set an output format! like "ffbc mp4 xxxx" or ffbc mkv xxxx"
	exit
fi

# set format
if [ $outmode=mp4 ]
	then
	 outformat=mp4
	else
	 outformat=matroska
fi

# Check FFMPEG Installation
if ffmpeg -formats > /dev/null 2>&1 
	then
	 ffversion=`ffmpeg -version 2> /dev/null | grep ffmpeg | sed -n 's/ffmpeg\s//p'`
	 echo "Your ffmpeg verson is $ffversion"
	else
	 echo "\nERROR:\nYou need ffmpeg installed with x264 and an aac encoder"
	 exit
fi

if ffmpeg -formats 2> /dev/null | grep "E mp4" > /dev/null
	then
	 echo "Check mp4 container format ... OK"
	else
	 echo "Check mp4 container format ... NOK"
	 exit
fi

if ffmpeg -formats 2> /dev/null | grep "E matroska" > /dev/null
        then
         echo "Check mkv container format ... OK"
        else
         echo "Check mkv container format ... NOK"
         exit
fi

if ffmpeg -codecs 2> /dev/null | grep "libfaac" > /dev/null
        then
         echo "Check fAAC Audio Encoder ... OK"
        else
         echo "Check fAAC Audio Encoder ... NOK"
         exit
fi

if ffmpeg -codecs 2> /dev/null | grep "libx264" > /dev/null
        then
         echo "Check x264 the free H.264 Video Encoder ... OK"
        else
         echo "Check x264 the free H.264 Video Encoder ... NOK"
         exit
fi

echo "Your FFMpeg is OK\nEntering File Processing\n\n"

################################################################

for filelist in `ls`
do
	if ffmpeg -i $filelist 2>&1 | grep 'Invalid data found'		#check if it's video file
	   then
	   echo "\n\nERROR\nFile $filelist is NOT A VIDEO FILE can be converted!"
	   exit	   
	
	fi

	if ffmpeg -i $filelist 2>&1 | grep Video: | grep h264		#check video codec
	   then
	    vcodec=copy
	   else
	    vcodec=libx264
	fi

	if ffmpeg -i $filelist 2>&1 | grep Video: | grep "High 10"	#10 bit H.264 can't be played by Hardware.
	   then
	    vcodec=libx264
	fi

	if ffmpeg -i $filelist 2>&1 | grep Audio: | grep aac		#check audio codec
	   then
	    acodec=copy
	   else
	    acodec=libfaac
	fi

	echo "\n\nUseing video codec: $vcodec audio codec: $acodec and Container format $outformat for\nFile: $filelist\n\n\n\nStarting Converting\n" 

# using ffmpeg for real converting
	echo "Command:\nffmpeg -i $filelist -y -f $outformat -acodec $acodec -ab 160k -ac 2 -vcodec $vcodec -profile:v main -level 3.1 -qmax 20 -qmin 13 -threads 0 ./output/$filelist.$outmode\n\n"
	ffmpeg -i $filelist -y -f $outformat -acodec $acodec -ab 160k -ac 2 -vcodec $vcodec -profile:v main -level 3.1 -qmax 18 -qmin 12 -threads 0 ./output/$filelist.$outmode

	
done
	echo ALL Processed!



###################
echo "DONE"
exit

