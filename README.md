dotfiles
========


## Installation
1) Clone this repo into `~/dotfiles`
``` bash
git clone --depth 1 https://github.com/manelli/dotfiles ~/dotfiles
```

2) Create symlinks
``` bash
cd ~/dotfiles
./makesymlinks.sh
```

3) Done!


## makesymlinks.sh
The `makesymlinks.sh` script will:

1. Back up any existing dotfiles in `~/` to `~/old_dotfiles/`
2. Create symlinks of the dotfiles in `~/dotfiles/` in `~/`

---

### Requirements
- [vim](https://github.com/vim/vim)
- [vim-plug](https://github.com/junegunn/vim-plug) (vendored in `vim/autoload/plug.vim`)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)
