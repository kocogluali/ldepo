#!/bin/bash
#name: listUsers
#author: Generic
#description: List Desktop Users
#version: 1.0
#root: no
#category: system-tools
#distro: debbased, rpmbased

awk -F: '{if(($3 >= 500)&&($3 <65534)) print $1}' /etc/passwd
