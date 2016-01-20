# Load .bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# autostart X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# load .profile
source ~/.profile
