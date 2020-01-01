#!/usr/bin/env sh

cd ansible

ansible-playbook --connection=local -i env playbook.yml

cd ../

stow i3
#stow kitty
#stow rofi
#stow tmux
#stow vim
stow zsh