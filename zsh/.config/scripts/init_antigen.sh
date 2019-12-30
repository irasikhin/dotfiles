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
antigen bundle copyfile
antigen bundle docker
antigen bundle encode64
antigen bundle extract
antigen bundle gradle
antigen bundle history
antigen bundle jira
antigen bundle lol
antigen bundle mvn
antigen bundle sbt
antigen bundle ssh-agent
antigen bundle systemd
antigen bundle wd
antigen bundle pass

# others
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

#theme
antigen theme romkatv/powerlevel10k

# apply
antigen apply
