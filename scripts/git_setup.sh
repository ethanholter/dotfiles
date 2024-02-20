#!/bin/bash

# idempotent - yes

sudo apt install git
sudo apt install gpg

read -p "Configure name and email? (y/n) " A

if [ $A = "y" ]; then
  read -p "Enter fullname: " FULLNAME
  read -p "Enter email: " EMAIL
  git config --global --replace-all user.name $FULLNAME
  git config --global --replace-all user.email $EMAIL
fi
unset A



git config --global --replace-all pull.rebase true
git config --global --replace-all rebase.autoStash true
git config --global --replace-all core.editor "nano"
git config --global --replace-all color.ui true
git config --global --replace-all credential.credentialStore gpg

# configure git credential manager-core

if ! command -v git-credential-manager; then
  git config --global --unset credential.helper
  curl -L https://aka.ms/gcm/linux-install-source.sh | bash
  git-credential-manager configure
fi

echo "git setup successfully"