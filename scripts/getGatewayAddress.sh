#!/bin/bash
#name: getGatewayAddress
#author: Generic
#description: Get Gateway Address
#version: 1.0
#root: no
#category: system-tools
#distro: debbased, rpmbased
/sbin/ip route | awk '/default/ { print $3 }'
