EDITOR="nvim"
win=$(xdotool getactivewindow)
xkb-switch -s us
kitty --class floatwin -- bash -c "xsel -o | vipe --suffix txt | xsel -b -i"
xdotool windowactivate $win
xdotool key ctrl+v

