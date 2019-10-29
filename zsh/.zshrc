source $HOME/.config/hashui.zsh
source $HOME/.config/vpn.zsh
source $HOME/bin/antigen.zsh
source $HOME/.cargo/env
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle autojump
antigen theme denysdovhan/spaceship-prompt
antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:~/work/app/zulu-jdk12/bin:~/work/app/sbt/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/work/app/mvn/bin
export SBT_HOME=~/work/app/sbt
export JAVA_HOME=~/work/app/zulu-jdk12
#export GRAALVM_HOME=~/work/app/graalvm
export XDG_DATA_DIRS=$XDG_DATA_DIRS:~/bin
export TERMINAL=termite
export EDITOR=nvim
export SHELL=/bin/zsh

alias pacman="sudo pacman"

function fzf-ssh () {
  local selected_host=$(grep "Host " ~/.ssh/config | grep -v '*' | cut -b 6- | fzf --query "$LBUFFER")

  if [ -n "$selected_host" ]; then
    BUFFER="ssh ${selected_host}"
    zle accept-line
  fi
  zle reset-prompt
}

zle -N fzf-ssh
bindkey '^s' fzf-ssh

export MAVEN_USERNAME=admin
export MAVEN_PASSWORD=inworkwetrust

