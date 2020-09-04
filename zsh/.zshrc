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

# work environment
if [[ -r "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh"
fi

export PATH=$PATH:/home/irasikhin/work/pr/proto-api-all/scripts
export PATH=$PATH:/home/irasikhin/.gem/ruby/2.7.0/bin
