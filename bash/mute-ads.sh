# /bin/bash

if [ "$(playerctl metadata --format "{{ title }}")" = 'Advertisement' ] && [ "$(amixer get Master | grep '\[on\]')" ]; then
	amixer sset Master mute
elif [[ $(amixer get Master | grep '\[off\]') ]]; then
	amixer sset Master unmute
fi
