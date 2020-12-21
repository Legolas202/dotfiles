#!/bin/sh

#script to change wallpaper and color others apps (urxvt/dunst/spotify/zathura...) with pywal

#cd ~/dotfiles/wallpapers
#ls -a -t -1
#echo -n -e "\nWhich wallpaper do you  want ?\n"
#read ans
#FILE=~/dotfiles/wallpapers/$(ls ~/dotfiles/wallpapers | rofi -dmenu -location 7 -yoffset -5 -xoffset 5 -width 15 \
#-mesg "-WHICH THEME ?-")

FILE=$(sxiv -torbf -A 60  ~/dotfiles/wallpapers | awk 'END{print}')
DEFAULT=~/dotfiles/wallpapers/koi.png

if [ -f "$FILE" ]; then
	wal -i $FILE -o ~/dotfiles/scripts/wal-other.sh
	spicetify update
else
	rofi -e "No file named $FILE found, loading default wallpaper instead(Press ENTER to continue)"
	wal -i $DEFAULT -o ~/dotfiles/scripts/wal-other.sh
	spicetify update
fi
