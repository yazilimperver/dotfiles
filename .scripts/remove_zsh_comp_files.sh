#!/bin/sh

# zsh tamamlama dosyalarının yerini değiştirelim ve oluşanları da silelim
# https://stackoverflow.com/questions/62931101/i-have-multiple-files-of-zcompdump-why-do-i-have-multiple-files-of-these
sed -i -e "/source \$ZSH\/oh-my-zsh.sh/i export ZSH_COMPDUMP=\$ZSH\/cache\/.zcompdump-\$HOST" ~/.zshrc
rm -f .zcompdump*