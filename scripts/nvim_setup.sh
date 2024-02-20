#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root" && exit 1
fi

wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage 
add-apt-repository universe
apt install libfuse2
chmod u+x nvim.appimage
mv ./nvim.appimage /usr/bin/nvim
git clone https://github.com/ethanholter/dotfiles.nvim ~/.config/nvim