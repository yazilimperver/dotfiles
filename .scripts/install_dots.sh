#!/bin/sh
rm .bashrc
rm .zshrc
rm .vimrc
rm -rf .cfg

git clone --bare https://github.com/yazilimperver/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout -f
config config status.showUntrackedFiles no
