dotfiles
========


## Installation
1) Clone this repo into `~/dotfiles`
``` bash
git clone https://github.com/manelli/dotfiles ~/dotfiles
```

2) Run the script
``` bash
cd ~/dotfiles
./dotfiles.sh
```

3) Done!


## dotfiles.sh
The `dotfiles.sh` script will:

1. Back up any existing dotfiles in `~/` to `~/dotfiles_backup/`
2. Link the dotfiles in `~/dotfiles/` to `~/`

---

## Custom binaries
Custom binaries go in `~/.bin`

## Custom configuration
Custom configuration and aliases go in `~/.customrc`

## Vim Plugs installation
In vim run the following command: `:PlugUpdate`

### Requirements
- [vim 8.1+](https://github.com/vim/vim)
- [tmux](https://github.com/tmux/tmux)
- [rg](https://github.com/BurntSushi/ripgrep)
