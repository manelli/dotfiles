## Shortcuts
alias E='cd ~/Desktop'
alias D='cd ~/Downloads'
alias dotfiles='cd ~/dotfiles'
alias work='cd ~/work'
alias dev='cd ~/dev'
alias bin='cd ~/.bin'

## tmux in 256 colors
alias tmux='tmux -2'

platform=$(uname);
if [[ $platform == 'Linux' ]]; then
  alias ls='ls -p --color'
  alias rm='rm -I'
  alias rmf='rm -rfI'
elif [[ $platform == 'Darwin' ]]; then
  alias ls='ls -p -G'
  alias rm='rm -i'
  alias rmf='rm -rfi'
fi

## je
alias :q='exit'
alias :Q='exit'
alias EXIT='exit'

## vi -> vim
alias vi='vim'

# reload configs
alias reload_tmux='tmux source-file ~/.tmux.conf'
alias reload_bash='source ~/.bashrc'
