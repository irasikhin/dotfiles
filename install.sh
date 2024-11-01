#!/usr/bin/env sh

cd ansible && ansible-galaxy install --roles-path ./roles https://github.com/kewlfft/ansible-aur.git && cd - || exit 1
cd ansible && ansible-playbook --connection=local -i env playbook.yml && cd - || exit 1

stow i3
#stow rofi
#stow tmux
#stow vim
stow zsh
