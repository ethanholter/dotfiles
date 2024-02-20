#!/bin/bash

# idempotent - yes

read -p "Enter fullname: " FULLNAME
read -p "Enter email: " EMAIL

git config --global --replace-all user.name $FULLNAME
git config --global --replace-all user.email $EMAIL
git config --global --replace-all pull.rebase true

echo "Done"


# FOR ONCE IN MY GODDAMN LIFE I WANT GIT TO NOT WORK SO I CAN TEST IT BUT IT WONT FUCKING BREAK
# FUCKKCKCKCKCKCKCKCCKCKCKCK
# THIS SHIT HAS NEVER FUCKING WORKED UNTIL NOW WTFFFFF  