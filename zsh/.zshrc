# p10k
source $HOME/.config/scripts/init_p10k.sh

# antigen
source $HOME/.config/scripts/init_antigen.sh

# global env
source $HOME/.config/scripts/init_global_env.sh

# pacman
alias pacman="sudo pacman"

# work environment
if [[ -r "${XDG_CACHE_HOME:-$HOME/.config}/init_work_env.sh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.config}/init_work_env.sh"
fi
