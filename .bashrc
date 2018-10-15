# So that script will expand aliases.
shopt -s expand_aliases
# Enable recursive globbing
shopt -s globstar

# change to my work directory by default; at least till I change jobs
# cd ~/work/masters

# make gem work
# PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# add heroku to path
PATH="/usr/local/heroku/bin:$PATH"

# add skype
# PATH="~/.aur/usr/bin:$PATH"

# What does this do ?
export CLICOLOR=1
# something to do with vim zenburn
export TERM=xterm-256color

# aliases
alias ls='ls --color'
alias c='clear'
alias rm='rm -i'
alias mv='mv -i'

# ctags
# alias ct='ctags -R .'

alias freelanceTimeTracker='~/work/freelancerApp/opt/freelancer-desktop-app/1.3.1/freelancer-desktop-app --skip-update'

alias testdb='psql --host=test.c9zno5jkt58g.us-west-2.rds.amazonaws.com --port=5432 --username=ebtest -w testdb'
alias proddb='psql --host=prod.c9zno5jkt58g.us-west-2.rds.amazonaws.com --port=5432 --username=jayant -w gyandhan_main'
alias proddbsuperuser='psql --host=prod.c9zno5jkt58g.us-west-2.rds.amazonaws.com --port=5432 --username=gyandhan -w gyandhan_main'

alias restart_wifi='sudo systemctl restart netctl-auto@wlo1'

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

alias study='cd ~/work/masters/course_work'
alias code='cd ~/work/masters/coding/leetCode'
alias ml='cd ~/work/masters/course_work/machine_learning'
alias nosql='cd ~/work/masters/course_work/big_data_engg/nosql_project/'
alias resume='cd ~/work/employment/resume'
alias research='cd ~/work/masters/research'
alias vision='cd ~/work/masters/research/vision/semantic_localization'
alias flights='cd ~/work/masters/research/flights'
alias transdev='cd ~/work/masters/research/transdev'

alias spark_cd='cd /home/jayant/work/masters/research/distributed_systems/spark-1.6.1-bin-hadoop1'

export HADOOP_CONF_DIR='/home/jayant/work/masters/research/distributed_systems/hadoop-1.2.1/conf'
alias hadoop_cd='cd /home/jayant/work/masters/research/distributed_systems/hadoop-1.2.1'
alias hadoop='/home/jayant/work/masters/research/distributed_systems/hadoop-1.2.1/bin/hadoop'
alias hadoop_start='/home/jayant/work/masters/research/distributed_systems/hadoop-1.2.1/bin/start-all.sh'
alias hadoop_stop='/home/jayant/work/masters/research/distributed_systems/hadoop-1.2.1/bin/stop-all.sh'

alias webapp='cd ~/work/gyandhan/crispy-parakeet'
alias ds='cd ~/work/gyandhan/datadev'
alias blog='cd ~/work/gyandhan/blog'
alias gsd='cd ~/work/gyandhan/glassdoor_api'
alias gsd0='cd ~/work/gyandhan/glassdoor_api/glassdoor_0'
alias gsd1='cd ~/work/gyandhan/glassdoor_api/glassdoor_1'

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
alias run_loaneligs_test='ruby -I test test/integration/loaneligs_flow_test.rb -n'

# town talkies
alias geetblog='ssh -i ~/.ssh/town_talkies.ssh ec2-user@52.77.38.171'

# remove and add wifi modules
alias getWifiWorking='sudo rmmod brcmfmac; sleep 5; sudo modprobe brcmfmac;'

# headache typing
alias netctl-auto='sudo netctl-auto'
alias systemctl='sudo systemctl'

# elastic beanstalk
alias sshprod='eb ssh production --force'
alias sshtest='eb ssh test --force'
# hyunsoo
alias sshhyunsoo='ssh hyunsoo'
alias gpu='ssh gpu'
alias msi='ssh msi'
# USE THIS!!!!
alias scp_rsync='rsync -rh -u --info=progress2 -e ssh'

# compress project
alias compressProject='~/work/git-archive-all/git_archive_all.py deployments/current.zip'

# restart pdnsd
alias redns='systemctl restart pdnsd'
# ping
alias ping_test='ping www.google.com -c 3'

# HDMI
alias hdmi='xrandr --output HDMI1 --mode 1920x1080'
# HDMI Off
alias hdmi_off='xrandr --output HDMI1 --off'

# MATLAB
alias matlab_cmd='cd ~/software/matlab_2016; bin/matlab -nojvm -nodisplay -nosplash; cd -'
alias cd_matlab='cd ~/software/matlab_2016;'

# nohup background jobs
function blowjob(){
  nohup $1 > /dev/null &
}

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

# Hadoop won't run without this
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

# added by Miniconda3 installer
export PATH="/home/jayant/miniconda3/bin:$PATH"

export MATLABPATH='/home/jayant/work/masters/course_work/robotics_vision'

# Bash History customizations
# history size
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
