#!/bin/bash
#name: getCPUModel
#author: Generic
#description: Get CPU model
#version: 1.0
#root: no
#category: system-tools
#distro: debbased, rpmbased
cat /proc/cpuinfo | grep "model name" | tail -1
