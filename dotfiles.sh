#!/usr/bin/env bash

fs="
  alacritty.toml
  bash_aliases
  bashrc
  bin
  gitconfig
  gitignore
  gitmessage
  inputrc
  tmux.conf
  vim
  vimrc
"

cd ~ || exit 1

mkdir -p ~/dotfiles_backup

printf "%-20s backup linked\n" "dotfile"
echo "----------------------------------"

for f in $fs; do
  [ -h ~/."$f" ] && unlink ~/."$f"
  [ -d ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  [ -f ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  printf "%-20s      ✓" "$f"

  ln -s ~/dotfiles/"$f" ~/."$f"
  printf "      ✓\n"
done

printf "\nDone!\n"

printf "Run: echo \"[ -f ~/.bashrc  ] && source ~/.bashrc\" >> .bash_profile\n"
