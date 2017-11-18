#!/bin/bash

if [ ! -f "cscopeforvim.sh" ];then
    echo "copying files"
    cp ~/other/cscopeforvim.sh ./
else
    echo "file exist.."
fi
if [ -f "cscope.files" ] && [ "$1" != "-r" ];then #&& [ -z $1 ];then
#find . -iname "*.[ch]" >> cscope.files
    if [ "$1" = "-a" ];then
    echo cscope.files exist and add new file!
    find . -iname "*.[ch]" >> cscope.files
    elif [ -n "$1" ];then
    echo "COMMAND \"$1\" NOT FOUND ! ";exit
    exit
    else
    echo cscope.files exist and refresh!
    fi
else
echo create cscope.files !
find . -iname "*.[ch]" > cscope.files
fi
#find code -iname "*.inl" >> cscope.files
cscope -Rbkqi cscope.files
ctags -R

echo cscope init ok !
