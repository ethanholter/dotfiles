#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root" && exit 1
fi


sudo -u $SUDO_USER git config --global --replace-all user.email "holterethan@gmail.com"
sudo -u $SUDO_USER git config --global --replace-all user.name "Ethan Holter"
sudo -u $SUDO_USER git config --global --replace-all pull.rebase true

echo "Done"
