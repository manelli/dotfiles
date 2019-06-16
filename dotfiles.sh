#!/usr/bin/env bash

fs="
  bash_aliases
  bashrc
  bin
  gemrc
  gitconfig
  gitignore
  gitmessage
  inputrc
  irbrc
  tmux.conf
  vim
  vimrc"

cd ~ || exit 1

mkdir -p ~/dotfiles_backup

printf "%-20s backup copied\n" "dotfile"
echo "----------------------------------"

for f in $fs; do
  [ -d ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  [ -f ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  printf "%-20s      ✓" "$f"

  cp -a ~/dotfiles/"$f" ~/."$f"
  printf "      ✓\n"
done

printf "\nDone!\n"
