#!/bin/sh
#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respec

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${color7:-}" \
      -lb  "${color5:-}" \
      -lfr "${color4:-}" \
      -nf  "${color7:-}" \
      -nb  "${color3:-}" \
      -nfr "${color2:-}" \
      -cf  "${color7:-}" \
      -cb  "${color1:-}" \
      -cfr "${color0:-}" > /dev/null 2>&1 &


