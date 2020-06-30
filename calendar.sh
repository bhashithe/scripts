#!/usr/bin/env bash
# the position of current mouse location
eval $(xdotool getmouselocation --shell)
posX=$(($X - 150))
posY=$(($Y - 150))

i3-msg -q "exec yad --calendar \
		--undecorated --fixed \
		--close-on-unfocus --no-buttons \
		--posx=$posX --posy=$posY \
		> /dev/null"
