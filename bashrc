# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1="\[$(tput rev)\]\[$(tput bold)\] \u@\h:\W \$\[$(tput sgr0)\]"
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi
alias nts='cd ~/Documents/Notes/;ls'
alias ll='ls -al'
alias ld='ls -ald'
alias lz='ls -alz'
alias ldz='ls -aldz'
alias cgrep='egrep -v "^$|^#|^\;|^\/"'
alias vi=vim
alias py='python3.6'
#alias case='ssh -Y grab@jpwa'
alias rcon="rdesktop -u Administrator -p Redhat12 -d trx0009.com -g 1024x768 -z 10.12.211.157"
alias vcall="vim Documents/Notes/Call_Sheet"
alias errgrp="egrep -i -e error -e fail"
alias flop="lftp -e 'set ftp:ssl-auth; open jwooten@flopbox.corp.redhat.com'"

function sos () {
   grab2 $1
   cd /home/jwooten/sosreports/$1
   ll | grep "[[:space:]]idminfo[[:graph:]]*\.txt$"
   CURRENT_CASE=$1
}

function cs () {
   if [ -n "$1" ] 
   then
      echo $1 > /home/jpw/temp/CURRENT_CASE.txt
      CURRENT_CASE=$1
   else
      CURRENT_CASE=$(cat /home/jpw/temp/CURRENT_CASE.txt)
   fi
   cd /home/jpw/sosreports/$CURRENT_CASE
   ls -al
}

dl() { wget  ftp://ftp:Mawn_Fep2@flopbox.corp.redhat.com/$1; }

function tvim () {
 terminator -e "vim $1"
}
set SUDO_PROMPT="Enter RADIUS password (http://otp for help): "

