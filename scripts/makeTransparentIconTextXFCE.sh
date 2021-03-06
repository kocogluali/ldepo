#!/bin/bash
#name: makeTransparentIconTextXFCE
#author: Generic
#description: Make Transparent XFCE Icon Text
#version: 1.0
#root: no
#category: desktop
#distro: onxfce

echo 'style "xfdesktop-icon-view" {
XfdesktopIconView::label-alpha = 0
XfdesktopIconView::selected-label-alpha = 170

base[NORMAL] = "#cccccc"
base[SELECTED] = "#cccccc"
base[ACTIVE] = "#cccccc"

fg[NORMAL] = "#ffffff"
fg[SELECTED] = "#000000"
fg[ACTIVE] = "#000000"
}
widget_class "*XfdesktopIconView*" style "xfdesktop-icon-view"' > ~/.gtkrc-2.0
