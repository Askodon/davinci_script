#!/bin/sh

#this is davinci resolve convert script
#please check if zenity install on your distro


#open file.
FILE=`zenity --file-selection`
#save file. enter the name and ".mov".
DIR=`zenity --file-selection --save`
#convert file to work on davinci.
ffmpeg -i $FILE -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le -f mov $DIR
