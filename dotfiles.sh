#!/usr/bin/env bash

fs="
  bash_aliases
  bashrc
  bin
  gemrc
  gitconfig
  gitmessage
  inputrc
  irbrc
  pryrc
  tmux.conf
  vim
  vimrc"

cd ~/dotfiles || exit 1

mkdir -p ~/dotfiles_backup

printf "Creating symbolic links:\n\n"
for f in $fs; do
  # Backup
  if [ -f ~/."$f" ]; then
    mv ~/."$f" ~/dotfiles_backup/
  fi

  # Symlink
  ln -s ~/dotfiles/"$f" ~/."$f"
  printf "%-12s OK\n" "$f"
done

printf "\nDone!\n"
