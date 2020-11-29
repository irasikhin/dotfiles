# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export SCRIPTS=$HOME/.config/scripts

# p10k
source $SCRIPTS/init_p10k.sh

# antigen
source $SCRIPTS/init_antigen.sh

# fzf
source $SCRIPTS/init_fzf.sh

# global env
source $SCRIPTS/init_global_env.sh

# pacman
alias pacman="sudo pacman"

# docker
alias docker="sudo docker"

# work environment
if [[ -r "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh"
fi

export PATH=$PATH:/home/irasikhin/work/pr/proto-api-all/scripts
export PATH=$PATH:/home/irasikhin/.gem/ruby/2.7.0/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
