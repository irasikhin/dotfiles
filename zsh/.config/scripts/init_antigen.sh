#!/usr/bin/env zsh

# antigen
source antigen.zsh

# omz
antigen use oh-my-zsh
antigen bundle colored-man-pages
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle copyfile
antigen bundle docker
antigen bundle encode64
antigen bundle extract
antigen bundle gradle
antigen bundle history
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
antigen bundle unixorn/git-extra-commands

# apply
antigen apply
