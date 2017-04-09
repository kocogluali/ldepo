#!/bin/sh
#name: MacWifiFix
#author: Generic
#description: MacBookPro12,1 Wifi Fix
#version: 1.0
#root: no
#category: wifi
#distro: macOS

# /usr/lib/systemd/system-sleep/network_hack_hibernation
#
# Restores network controller functionality after wakeup from
# hibernation
#
# Tested on MacBookPro12,1
# BCM43602 WiFi network controller

if [ "$2" = "hibernate" ]; then
    case "$1" in
        pre)
            if lsmod | grep -q brcmfmac; then
                rmmod brcmfmac
            fi
            ;;
        post)
            modprobe brcmfmac
            ;;
    esac
fi
