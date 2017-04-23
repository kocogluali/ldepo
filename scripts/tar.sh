#!/bin/bash
#name: tar
#author: Generic
#description: If file is a tar file then extract it otherwise make a tar file
#version: 1.0
#root: no
#category: system-tools
#distro: debbased, rpmbased
echo "$1"
filename=$(basename "$1")
extension="${filename##*.}"
echo "$extension"
if [ "$extension" =  "tar" ]
then
	tar -xvf $1
else
	tar -cvf $1.tar $1
fi
