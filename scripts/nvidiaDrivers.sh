#!/bin/bash
#name: nvidiaDrivers
#author: mertcelen
#description: Easy install drivers via ppa
#version: 1.0
#root: yes
#category: system-tools
#distro: debbased

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
apt-cache search nvidia
apt search nvidia
