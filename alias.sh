#!/bin/sh
#auto paste alias to use without cd to dir.
#type "davinci" on terminal.
WORK_DIR=$(pwd)

#change if use zsh to ~/.zshrc
echo -e "\nalias davinci='$WORK_DIR/"mov_script.sh"'" >> ~/.bashrc