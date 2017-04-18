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
2. Create symlinks of the dotfiles in `~/dotfiles/` in `~/`

---

## Custom binaries
Custom binaries go in `~/.bin`
Binaries with the `.x` extension will be ignored by git.

## Custom aliases
Custom aliases go in `~/.bash_profile`

### Requirements
- [vim](https://github.com/vim/vim) (with clipboard enabled)
- [vim-plug](https://github.com/junegunn/vim-plug) (vendored in `vim/autoload/plug.vim`)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)
