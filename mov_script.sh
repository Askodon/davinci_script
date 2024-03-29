#!/bin/sh
#usage ./mov_script.sh
#dependens: ffmpeg, zenity
#this is davinci resolve convert script, convert ".mp4" to ".mov"

#open file.
FIRST_FILE=`zenity --file-selection --title="select file to convert"`

#save file. enter the name and type ".mov".
zenity --info \
       --title "Info Message" \
       --width 300 \
       --height 100 \
       --text "choose end path and make file with ".mov""
#end directory and file name(please add ".mov")
END_DIR=`zenity --file-selection --directory --title="choose end directory"`

#context menu to enter end file name
FILE_TO_MOV=`zenity --title="file name" --entry`

#make true end path
PATH_AND_NAME=$END_DIR/$FILE_TO_MOV.mov

#context menu to choose param
ASK=`zenity --list --title="Options" --column= "mkv to mov" "mp4 to mov" --width=100 --height=300 --hide-header`


if [ "$ASK" == "mkv to mov" ]; then
#convert mkv to mov
       ffmpeg -i $FIRST_FILE -c:v prores_ks -profile:v 3 -c:a pcm_s24le $PATH_AND_NAME
fi

if [ "$ASK" == "mp4 to mov" ]; then
#convert mp4 to mov
       ffmpeg -i $FIRST_FILE -c:v prores_ks -profile:v 3 -c:a pcm_s24le $PATH_AND_NAME
fi

exit 0




