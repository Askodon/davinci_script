#!/bin/sh
#auto paste alias to use without cd to dir.
#type "davinci" on terminal.
WORK_DIR=$(pwd)

#context menu to choive between BASH and ZSH
ASK=`zenity --list --title="Options" --column= "make alias on ZSH shell?" "make alias on BASH shell?" --width=100 --height=300 --hide-header`

if [ "$ASK" == "make alias on BASH shell?" ]; then
       echo -e "\nalias davinci='$WORK_DIR/"mov_script.sh"'" >> ~/.bashrc
fi

if [ "$ASK" == "make alias on ZSH shell?" ]; then
       echo -e "\nalias davinci='$WORK_DIR/"mov_script.sh"'" >> ~/.zshrc
fi
exit 0