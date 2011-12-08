#!/bin/sh

#Naveen Kumar Molleti
#08 December 2011

if [ -z $XDG_CONFIG_HOME ]; then
	export XDG_CONFIG_HOME="$HOME/.config"
fi
