#
# ~/.bashrc
#

# If not running interactively, don't do anything
set -o vi
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
PS1="\[\033[00m\][\[\033[35m\]\u\[\033[34m\] \w\[\033[00m\]]$ "

export PATH=/usr/lib/jvm/java-20-openjdk/bin:$PATH


alias config='/usr/bin/git --git-dir=/home/freddy/.cfg/ --work-tree=/home/freddy'
