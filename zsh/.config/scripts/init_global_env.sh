#!/usr/bin/env zsh

# PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:~/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/home/irasikhin/work/app/clion/bin
export PATH=$PATH:/home/irasikhin/.gem/ruby/3.0.0/bin
export PATH=$PATH:/home/irasikhin/.gem/ruby/3.2.0/bin
export PATH=$PATH:/home/irasikhin/.gem/ruby/3.4.19/bin

# OTHER
export XDG_DATA_DIRS=$XDG_DATA_DIRS:~/bin
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
export TERMINAL=termite
export EDITOR=nvim
export SHELL=/bin/zsh
export MOAR='--statusbar=bold --no-linenumbers'
export PAGER=/usr/bin/moar

# nvm
if [[ -f "/usr/share/nvm/init-nvm.sh" ]]; then
  source /usr/share/nvm/init-nvm.sh
fi


. "$HOME/.zoxide_init.sh"