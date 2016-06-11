shopt -s expand_aliases
# So that script will expand aliases.

# change to my work directory by default; at least till I change jobs
cd ~/work/crispy-parakeet

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

alias netMobile='sudo netctl restart one'
alias startMobile='sudo netctl start one'
alias stopMobile='sudo netctl stop one'

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

alias grep='grep --color=auto -n'

# execute rake from bundle
alias rake='bundle exec rake'

# check system logs for high priority errors
alias checkLogs='journalctl -p 0..3 -xn'

# rails specific
alias rails='bin/rails'
alias rake='bin/rake'
alias spring='bin/spring'

# town talkies
alias geetblog='ssh -i ~/.ssh/town_talkies.ssh ec2-user@52.77.38.171'

# remove and add wifi modules
alias getWifiWorking='sudo rmmod brcmfmac; sleep 5; sudo modprobe brcmfmac;'

# headache typing
alias netctl-auto='sudo netctl-auto'
alias systemctl='sudo systemctl'

# vi as default editor
set -o vi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# run ssh-agent if not running
if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing)
fi
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'

# git completion
source ~/git-completion.bash
