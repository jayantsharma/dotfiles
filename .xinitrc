[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# transparent conky
# xcompmgr -c -t-5 -l-5 -r4.2 -o.55 &
conky -d 
# sleep 1 && transset-df .5 -n conky
# start browser and terminal in the background
firefox &
xterm &
# windows manager
exec awesome
