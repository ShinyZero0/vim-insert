EDITOR="nvim"
win=$(xdotool getactivewindow)
xkb-switch -s us
xdotool windowactivate $win
xdotool key ctrl+c && kitty --class floatwin -- bash -c "xsel -b -o | vipe --suffix txt | xsel -b -i && xdotool windowactivate $win && xdotool key ctrl+v"
