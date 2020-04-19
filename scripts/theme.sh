#!/bin/sh

#cd ~/dotfiles/wallpapers
#ls -a -t -1
#echo -n -e "\nWhich wallpaper do you  want ?\n"
#read ans
FILE=~/dotfiles/wallpapers/$(ls ~/dotfiles/wallpapers | rofi -dmenu -location 7 -yoffset -5 -xoffset 5 -width 15 \
-mesg "-WHICH THEME ?-")
DEFAULT=~/dotfiles/wallpapers/koi.png

if [ -f "$FILE" ]; then
	wal -i $FILE -o ~/dotfiles/scripts/dunst-colors.sh
else
	rofi -e "No file named $FILE found, loading default wallpaper instead(Press ENTER to continue)"
	wal -i $DEFAULT -o ~/dotfiles/scripts/dunst-colors.sh
fi
