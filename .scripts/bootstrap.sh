#!/bin/bash
# eu: Bir komut kalirsa direk cik, atanmamis degiskenler icin hata ver
set -eu

# Kontrol degiskenleri
var_username="yazilimperver"
var_home="/home/${var_username}";
var_ssh_comment="ssh comment yazilimperver@yazilimperver.com";
var_perform_update=true
var_download_basic_tools=true
var_generate_ssh=true
var_instal_zsh=true

# GUNCELLEMELER
###############
if [ "$var_perform_update" = true ] ; then
    echo "Guncellemeler Yapılacak";
    sudo apt-get update -y;
    sudo apt-get upgrade -y;
    echo "Guncellemeler Tamamlandi";
else
    echo "Guncellemeler Atlandi";
fi

# MAKINE BILGILERINI LISTELE
lsb_release -a
uname -r
lscpu
lsblk
free -m

# TEMEL YUKLEMELER
##################
if [ "$var_perform_update" = true ] ; then
    echo "Temel Yuklemeler Yapılacak";
    
    # Install stow
    sudo apt install -y stow
    
    # Install vim
    sudo apt install -y vim
    
    # Install development tools
    sudo apt install -y build-essential
    sudo apt install -y cmake ninja-build
    
    # Install other tools
    sudo apt install -y curl zip unzip tar
    sudo apt install -y htop btop
    sudo apt install -y tmux
    
    echo "Temel Yuklemeler Tamamlandi";
else
    echo "Temel Yuklemeler Atlandi";
fi

# SSH ANAHTARI OLUSTUR
######################
if [ "$var_generate_ssh" = true ] ; then
    echo "SSH Anahtari Olusturulacak";
    ssh-keygen -t ed25519 -C "${var_ssh_comment}"
    eval "$(ssh-agent -s)"
    ssh-add ${var_home}/.ssh/id_ed25519
    cat ${var_home}/.ssh/id_ed25519.pub
    echo "SSH Anahtari Olusturuldu ve Clipboarda Kopyalandi";
else
    echo "SSH Anahtari Olusturma Atlandi";
fi

# ZSH KURULUM
######################
if [ "$var_instal_zsh" = true ] ; then
    echo "ZSH Kurulacak";
    
    sudo apt install -y zsh
    zsh --version
    
    # Shelli varsayilan olarak ayarlayalim
    echo $SHELL
    
else
    echo "ZSH Kurulumu Atlandi";
fi
# YARDIMCI ARACLAR
# colorls, https://github.com/athityakumar/colorls
# Bunun oncesinde gcc ve make kurulu olmalı
# Install ruby:
sudo apt install -y ruby ruby-dev git
sudo gem install colorls

# TODO: VSCode
