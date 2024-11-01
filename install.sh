#!/usr/bin/env sh

cd ansible && ansible-galaxy collection install kewlfft.aur && cd - || exit 1
cd ansible && ansible-playbook --connection=local -i env playbook.yml && cd - || exit 1

stow i3
#stow rofi
#stow tmux
#stow vim
stow zsh
