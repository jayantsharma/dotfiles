[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# start browser and terminal in the background
firefox &
xterm &
# cairo composite manager
# cairo-compmgr &
conky &
# windows manager
exec awesome
