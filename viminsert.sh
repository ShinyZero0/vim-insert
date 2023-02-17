win=$(xdotool getactivewindow)
xdotool windowactivate $win
xdotool key --clearmodifiers ctrl+c
xkb-switch -s us
EDITOR="nvim"
kitty --class floatwin -- bash -c "xsel -b -o | vipe --suffix txt | xsel -b -i && xdotool windowactivate $win && xdotool key --clearmodifiers ctrl+v"



