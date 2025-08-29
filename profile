# If not running interactively, exit
case $- in *i*) ;; *) return ;; esac

export CLICOLOR=1
export EDITOR=vim
export LANG=en_US.UTF-8

# Git helpers
git_status() {
  local status
  status="$(git status --porcelain 2>/dev/null)" || return 0
  [[ -z "$status" ]] && echo "" || echo " ✖"
}
git_branch() {
  local branch
  branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)" || return 0
  [[ -z "$branch" ]] && echo "" || echo " $branch"
}

# cd && ls
cs() { cd "$@" && ls -p; }

# Aliases file
[ -f ~/.aliases ] && . ~/.aliases

# Custom configuration
[ -f ~/.customrc ] && . ~/.customrc

# Custom bin directory
export PATH="$PATH:$HOME/.bin"

# Prompt
if [ -n "${BASH_VERSION-}" ]; then
  RED="\033[01;31m"
  BLUE="\033[01;34m"
  RESET="\033[00m"
  GREEN="\033[01;32m"
  YELLOW="\033[01;33m"

  PS1="\[$GREEN\]\W"               # basename of pwd
  PS1+="\[$YELLOW\]\$(git_branch)" # prints current branch
  PS1+="\[$RED\]\$(git_status)"    # prints status
  PS1+="\[$BLUE\] $\[$RESET\] "
  export PS1
elif [ -n "${ZSH_VERSION-}" ]; then
  # Zsh: enable command substitution in prompt and use zsh's color codes
  setopt PROMPT_SUBST
  # %1~ = basename/short path; %# = prompt char (# for root, % for user)
  PROMPT='%F{green}%1~%f%F{yellow}$(git_branch)%f%F{red}$(git_status)%f%F{blue} %# %f'
fi
