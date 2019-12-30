#!/usr/bin/env zsh

# antigen
source $HOME/bin/antigen.zsh

# omz
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump

# others
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

#theme
antigen theme romkatv/powerlevel10k

# apply
antigen apply
