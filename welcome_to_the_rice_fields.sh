#!/bin/bash

# gnome packages
yes | sudo apt install gnome-tweaks gnome-shell-extensions gnome-themes-extra 

# unecessary flexing
yes | sudo apt install cava neofetch bpytop

# Theme
sudo apt install gtk2-engines-murrine
git clone https://github.com/vinceliuice/Colloid-icon-theme ${HOME}/Code/Colloid-icon-theme
cd ${HOME}/Code/Colloid-icon-theme
source ./install.sh -s nord -t all
git clone https://github.com/vinceliuice/Colloid-gtk-theme ${HOME}/Code/Colloid-gtk-theme
cd ${HOME}/Code/Colloid-gtk-theme
source ./install.sh -l -c dark -t all --tweaks rimless float