# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.profile

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups:erasedups
# Larger history size
export HISTSIZE=50000
# Append history entries
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
