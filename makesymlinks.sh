#!/bin/bash
############################
# .makesymlinks.sh
# This script creates symlinks from ~/ to any desired dotfiles in ~/dotfiles
############################

##########

# dotfiles directory
dir=~/dotfiles

# backup directory
olddir=~/old_dotfiles

# list of files/folders to symlink in ~/
files="bash_aliases bashrc gemrc gitconfig inputrc irbrc pryrc tmux.conf vim vimrc"

##########

# create backup in olddir
echo -n "Creating $olddir for backup of any existing dotfiles ... "
mkdir -p $olddir
echo "done"
echo

# change to the dotfiles directory
cd $dir || exit

# move any existing dotfiles in ~/ to old_dotfiles directory,
# then create symlinks from ~/ to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo -n "Creating backup for .$file ... "
    mv ~/."$file" ~/old_dotfiles/
    echo "done"

    echo -n "Creating symlink to .$file ... "
    ln -s $dir/"$file" ~/."$file"
    echo "done"

    echo
done

echo "dotfiles symlinked correctly"
