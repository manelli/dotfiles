dotfiles
========


## Installation

``` bash
git clone --depth 1 https://github.com/manelli/dotfiles ~/dotfiles
```

## Usage

``` bash
cd ~/dotfiles
./makesymlinks.sh
```

The `makesymlinks.sh` script will:

1. Back up any existing dotfiles in `~/` to `~/old_dotfiles/`
2. Create symlinks of the dotfiles in `~/dotfiles/` in `~/`

---

### Requirements
- [Vim](https://github.com/vim/vim) / [Neovim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)

### Other stuff

Keyboard shorcut for starting tmux:
``` bash
gnome-terminal --maximize -e 'tmux -2'
```
