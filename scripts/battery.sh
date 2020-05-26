#!/bin/sh

LOW=10
CRITICAL=5
L_ALERT=false
C_ALERT=false
CH_ALERT=false

while true; do
	STATUS=$(cat /sys/class/power_supply/BAT0/status)
	CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
	if [[ "$STATUS" == "Discharging" ]]; then
		CH_ALERT=false
		if [[ $CAPACITY -le $CRITICAL ]] && [[ "$C_ALERT" == "false" ]]; then
			notify-send --urgency=CRITICAL "Battery empty($CAPACITY%). The computer will shut down soon."
			C_ALERT=true
			L_ALERT=true
		elif [[ $CAPACITY -le $LOW ]] && [[ "$L_ALERT" == "false" ]]; then
			notify-send --urgency=CRITICAL "Low Battery($CAPACITY%).Please connect the computer to the power supply."
			L_ALERT=true
		fi
	elif [[ "$STATUS" == "Charging" ]] && [[ "$CH_ALERT" == "false" ]]; then
		notify-send --urgency=NORMAL "Now charging..."
		L_ALERT=false
		C_ALERT=false
		CH_ALERT=true
	fi
	sleep 1	
done
