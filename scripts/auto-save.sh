#!/bin/bash

MSG=1

while [ $MSG -eq 1 ]; do
	if [ -e /run/media/legolas20/MyLinuxLive ]; then 
		if zenity --question --title="Auto-Save" --text="MyLinuxLive is plugged, do an auto-save ?"; 
		then
			urxvt -e rsync -av --progress --delete-after --exclude-from=ExclusionR /home/legolas20/ /run/media/legolas20/MyLinuxLive/SAUV/legolas20/ 
			MSG=0
		else
			sleep 1h
		fi
	fi 
done
