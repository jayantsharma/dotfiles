shopt -s expand_aliases
# So that script will expand aliases.

# make gem work
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# add heroku to path
PATH="/usr/local/heroku/bin:$PATH"

# What does this do ?
export CLICOLOR=1
# something to do with vim zenburn
export TERM=xterm-256color

# aliases
alias ls='ls --color'

alias rm='rm -i'

# ctags
# alias ct='ctags -R .'

alias freelanceTimeTracker='~/work/freelancerApp/opt/freelancer-desktop-app/1.3.1/freelancer-desktop-app --skip-update'

alias netJerzy='sudo netctl restart jerzy'
alias startJerzy='sudo netctl start jerzy'
alias stopJerzy='sudo netctl stop jerzy'

alias netHome='sudo netctl restart home'
alias startHome='sudo netctl start home'
alias stopHome='sudo netctl stop home'

alias netPhoton='sudo netctl restart photon'
alias startPhoton='sudo netctl start photon'
alias stopPhoton='sudo netctl stop photon'

alias netAashima='sudo netctl restart aashima'
alias startAashima='sudo netctl start aashima'
alias stopAashima='sudo netctl stop aashima'

alias restart='sudo reboot'
alias shutdown='sudo shutdown now'

alias sshBharat='ssh rishu07@www.himalpinist.com'

alias packageInstall='sudo pacman -S'

alias svim='sudo vim'

# check system logs for high priority errors
alias checkLogs='journalctl -p 0..3 -xn'

# vi as default editor
set -o vi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
