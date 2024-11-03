#!/usr/bin/env sh

cd ansible && ansible-galaxy collection install community.general && cd - || exit 1
cd ansible && ansible-galaxy collection install kewlfft.aur && cd - || exit 1
cd ansible && ansible-playbook --connection=local -i env.yml playbook.yml && cd - || exit

stow -t $HOME/ nvim
stow -t $HOME/ i3
stow -t $HOME/ rofi
stow -t $HOME/ byobu
stow -t $HOME/ scripts
stow -t $HOME/ zsh
