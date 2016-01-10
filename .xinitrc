[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# start browser and terminal in the background
firefox &
xterm &
# windows manager
exec awesome
