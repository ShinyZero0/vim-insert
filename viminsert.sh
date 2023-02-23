#!/bin/sh

EDITOR="nvim"

win=$(xdotool getactivewindow)
xkb-switch -s us

xdotool windowactivate $win

xclip -selection clipboard -o > viminsertoldclip.txt

xdotool keyup shift
xdotool keyup super
xdotool keyup alt
xdotool keyup ctrl

xdotool key ctrl+c

xclip -selection clipboard -o > viminsert.txt

kitty --class floatwin -- bash -c "$EDITOR viminsert.txt ; cat viminsert.txt | xclip -selection clipboard -i && xdotool windowactivate $win && xdotool keyup shift && xdotool keyup super && xdotool keyup alt && xdotool keyup ctrl && xdotool key ctrl+v"

cat viminsertoldclip.txt | xclip -selection clipboard -i 
