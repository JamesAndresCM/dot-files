#
# ~/.bashrc
#

# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\033[37m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"

export EDITOR=/usr/bin/vim

export LSCOLORS=ExFxCxDxBxegedabagacad
export CLICOLOR=1

printf "\033[0;32m $(fortune)\n"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
