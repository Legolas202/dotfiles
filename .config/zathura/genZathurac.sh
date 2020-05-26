#!/bin/zsh
[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

FILE="$HOME/dotfiles/.config/zathura/zathurarc"
pidof zathura && killall zathura

sed -i '1,$ d' ${FILE}
CONF=$(cat <<-END
	# Zathura configuration file
	# See man 'man zathurarc'

	# Open document in fit-width mode by default
	set adjust-open "best-fit"

	# One page per row by default
	set pages-per-row 1

	#stop at page boundries
	set scroll-page-aware "true"
	set smooth-scroll "true"
	set scroll-full-overlap 0.01
	set scroll-step 100

	#zoom settings
	set zoom-min 10
	set guioptions ""

	# zathurarc-dark

	#set font "inconsolata 15"
	set default-bg "${background}" #00
	set default-fg "${foreground}" #01

	set statusbar-fg "#B0B0B0" #04
	set statusbar-bg "#202020" #01

	set inputbar-bg "${color2}" #00 currently not used
	set inputbar-fg "${foreground}" #02

	set notification-error-bg "#AC4142" #08
	set notification-error-fg "#151515" #00

	set notification-warning-bg "#AC4142" #08
	set notification-warning-fg "#151515" #00

	set highlight-color "${color2}" #0A
	set highlight-active-color "${color3}" #0D

	set completion-highlight-fg "#151515" #02
	set completion-highlight-bg "${color2}" #0C

	set completion-bg "${background}" #02
	set completion-fg "${foreground}" #0C

	set notification-bg "${color2}" #0B
	set notification-fg "${color1}" #00

	set recolor "true"
	set recolor-lightcolor "${background}" 
	set recolor-darkcolor "${foreground}" 
	set recolor-reverse-video "true"
	#set recolor-keephue "true"


	set render-loading "false"
	set scroll-step 50
	unmap f
	map f toggle_fullscreen
	map [fullscreen] f toggle_fullscreen)
END
)

echo -e "$CONF" >> ${FILE}
