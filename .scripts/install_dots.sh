#!/bin/sh
git clone --bare https://github.com/yazilimperver/dotfiles.git $HOME/.cfg

rm .bashrc
rm .zshrc
rm .vimrc
rm -rf .cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout
config config status.showUntrackedFiles no
