# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups:erasedups
# Larger history size
export HISTSIZE=50000
# Append history entries
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Vim for the win
export EDITOR=vim

# Colors on the terminal
export CLICOLOR=1

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Prompt colors
RED="\033[01;31m"
BLUE="\033[01;34m"
RESET="\033[00m"
GREEN="\033[01;32m"
YELLOW="\033[01;33m"

# Prompt settings
PS1="\[$GREEN\]\W"               # basename of pwd
PS1+="\[$YELLOW\]\$(git_branch)" # prints current branch
PS1+="\[$RED\]\$(git_status)"    # prints status
PS1+="\[$BLUE\] $\[$RESET\] "
export PS1

git_status() {
  status=$(git status --porcelain 2> /dev/null)
  if [[ $status == "" ]]
  then
    echo ""
  else
    echo " ✖"
  fi
}

git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ $branch == "" ]]
  then
    echo ""
  else
    echo " $branch"
  fi
}

cs() {
  cd "$@" && ls -p
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Disable Ctrl-S locking
stty ixany
stty ixoff -ixon

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$PATH:$HOME/.bin" # Custom bin directory
