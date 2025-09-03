#!/usr/bin/env bash

fs="
  alacritty.toml
  aliases
  bashrc
  bin
  gitconfig
  gitignore
  gitmessage
  inputrc
  profile
  tmux.conf
  vim
  vimrc
  zshrc
"

copy_fs="
  customrc
"

cd ~ || exit 1

mkdir -p ~/dotfiles_backup

printf "\n🔧 Installing dotfiles...\n\n"
printf "%-20s %s %s\n" "File" "Backup" "Link"
printf "────────────────────────────────\n"

for f in $fs; do
  [ -h ~/."$f" ] && unlink ~/."$f"
  [ -d ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  [ -f ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
  printf "%-20s   ✓" "$f"

  ln -s ~/dotfiles/"$f" ~/."$f"
  printf "     ✓\n"
done

for f in $copy_fs; do
  if [ -f ~/."$f" ]; then
    printf "%-20s   - (exists)\n" "$f"
  else
    [ -h ~/."$f" ] && unlink ~/."$f"
    [ -d ~/."$f" ] && mv ~/."$f" ~/dotfiles_backup/
    printf "%-20s   ✓" "$f"

    cp ~/dotfiles/"$f" ~/."$f"
    printf "     ✓\n"
  fi
done

printf "\n✅ Dotfiles installation complete!\n"
printf "\n💡 Note: Review and customize ~/.customrc as needed\n"
