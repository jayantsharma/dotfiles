# Load .bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# autostart X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
