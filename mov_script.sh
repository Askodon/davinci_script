#!/bin/sh
#usage ./mov_script.sh
#dependens: ffmpeg, zenity
#this is davinci resolve convert script



#open file.
FILE=`zenity --file-selection --title="select file to convert"`

#save file. enter the name and ".mov".
zenity --info \
       --title "Info Message" \
       --width 300 \
       --height 100 \
       --text "choose end path and make file with ".mov""
DIR=`zenity --file-selection --save --filename="/home/${USER}/"`

#convert file to work on davinci.
ffmpeg -i $FILE -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le -f mov $DIR



