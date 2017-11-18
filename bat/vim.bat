ctags -R

dir /s /b *.h *.inc *.c > cscope.files
cscope -b