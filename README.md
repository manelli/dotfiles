dotfiles
========


## Installation
1) Clone this repo into `~/dotfiles`
``` bash
git clone --depth 1 https://github.com/manelli/dotfiles ~/dotfiles
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
2. Copy the dotfiles in `~/dotfiles/` to `~/`

---

## Custom binaries
Custom binaries go in `~/.bin`

## Custom aliases
Custom aliases go in `~/.bash_profile`

## Vim Plugs installation
In vim run the following command: `:PlugUpdate`

### Requirements
- [vim](https://github.com/vim/vim) (See requirements in `vimrc`)
- [tmux](https://github.com/tmux/tmux)
- [ag](https://github.com/ggreer/the_silver_searcher)
