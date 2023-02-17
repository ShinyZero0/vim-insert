win=$(xdotool getactivewindow)
xdotool windowactivate $win
xdotool key ctrl+c
sleep 0.1
xkb-switch -s us
EDITOR="nvim"
kitty --class floatwin -- bash -c "xsel -b -o | vipe --suffix txt | xsel -b -i"
xdotool windowactivate $win
xdotool key ctrl+v

