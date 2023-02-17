EDITOR="nvim"

win=$(xdotool getactivewindow)
xkb-switch -s us

xdotool windowactivate $win
xdotool keyup super
xdotool keyup alt

xdotool keydown ctrl
sleep 0.1
xdotool key c
sleep 0.1
xdotool keyup ctrl

kitty --class floatwin -- bash -c "xsel -b -o | vipe --suffix txt | xsel -b -i && xdotool windowactivate $win && xdotool key ctrl+v"
