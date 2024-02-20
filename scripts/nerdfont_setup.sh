#!/bin/bash

FONTNAME="MartianMono"

# Install Nerd Fonts
if ! [ -d ~/.local/share/fonts ]; then
    mkdir -p ~/.local/share/fonts
fi

# Download and install the font
mkdir tmp/
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${FONTNAME}.tar.xz --output-dir tmp/
tar -xf ${FONTNAME}.tar.xz -C tmp/
mv tmp/*.ttf ~/.local/share/fonts
rm -rf tmp/

# Update the font cache
sudo fc-cache -fv

echo "Done"