#!/bin/sh

A="AZERTY (FR)"
B="QWERTY (US)"
C="QWERTY INT (US INT)"
CHOICE=$(echo -e "$A\n$B\n$C" | rofi -dmenu -location 7 -yoffset -5 \
-xoffset 5 -width 15 -mesg "-WHICH LAYOUT ?-")

if [[ ${CHOICE} == "$A" ]]; then
	setxkbmap -layout fr
elif [[ ${CHOICE} == "$B" ]]; then
	setxkbmap -layout us
elif [[ ${CHOICE} == "$C" ]]; then
	setxkbmap -layout us intl
else
	rofi -e "no keyboard config found, loading AZERTY layout"
	setxkbmap -layout fr
fi

