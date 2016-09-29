dotfiles
========


## Installation
1) Install [fzf](https://github.com/junegunn/fzf)

2) Clone this repo into `~/dotfiles`
``` bash
git clone --depth 1 https://github.com/manelli/dotfiles ~/dotfiles
```

3) Create symlinks
``` bash
cd ~/dotfiles
./makesymlinks.sh
```

4) Install [vim-plug](https://github.com/junegunn/vim-plug)

5) Done!


## makesymlinks.sh
The `makesymlinks.sh` script will:

1. Back up any existing dotfiles in `~/` to `~/old_dotfiles/`
2. Create symlinks of the dotfiles in `~/dotfiles/` in `~/`

---

### Requirements
- [Vim](https://github.com/vim/vim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)
