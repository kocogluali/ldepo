#!/bin/bash
#name: closeSingleUserMod
#author: Generic
#description: Close Single User Mod on GRUB
#version: 1.0
#root: no
#category: system-tools
#distro: debbased, rpmbased

sed 's/.*GRUB_DISABLE_RECOVERY.*/GRUB_DISABLE_RECOVERY="true"/' /etc/default/grub
update-grub
