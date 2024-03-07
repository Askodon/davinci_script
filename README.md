## sh script using to convert .mp4 to .mov, and using in davinci resolve.

converting mkv and mp4 to mov.
obs make mkv files as default, so that don't work on davinci resolve, to use mkv you can convert them.
> 
## installation

*   installation:
```
$ git clone https://github.com/Askodon/davinci_script.git
cd davinci_script
chmod +x ./mov_script.sh
./mov_script.sh
```
*   use of any dir: make executable alias.sh and use ./alias.sh that make command on .bashrc or .zshrc
```
$ chmod +x ./alias.sh
$ ./alias.sh
```
*   to use alias just type "davinci" on your terminal
```
$ echo -e "\nalias davinci='$WORK_DIR/"mov_script.sh"'" >> ~/.bashrc
```

