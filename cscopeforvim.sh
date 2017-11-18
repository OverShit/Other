#!/bin/bash
cscope -Rbkqi cscope.files
ctags -R
echo cscope init ok
