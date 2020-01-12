#!/usr/bin/env zsh

# PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:~/work/app/zulu-jdk12/bin:~/work/app/sbt/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/work/app/mvn/bin
export PATH=$PATH:~/work/app/pulsar/bin

# OTHER
export SBT_HOME=~/work/app/sbt
export JAVA_HOME=~/work/app/zulu-jdk12
#export GRAALVM_HOME=~/work/app/graalvm
export XDG_DATA_DIRS=$XDG_DATA_DIRS:~/bin
export TERMINAL=termite
export EDITOR=nvim
export SHELL=/bin/zsh
