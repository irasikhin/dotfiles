export SCRIPTS=$HOME/.config/scripts

# antigen
source $SCRIPTS/init_antigen.sh

# fzf
source $SCRIPTS/init_fzf.sh

# global env
source $SCRIPTS/init_global_env.sh

# pacman
alias pacman="sudo pacman"

# # docker
# alias docker="podman"
#
# # docker-compose
# alias docker-compose="podman-compose"

# python-local
alias python-local=". ~/.python/bin/activate"

# work environment
if [[ -r "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.config/scripts}/init_work_env.sh"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# starship

eval "$(starship init zsh)"

# eza
alias ls='eza --icons --group-directories-first --color=auto'
alias ll='eza -l --icons --group-directories-first --color=auto'
alias la='eza -la --icons --group-directories-first --color=auto'
alias lh='eza -lh --icons --group-directories-first --color=auto'
alias lt='eza --tree --icons --color=auto'

# fzf
eval "$(fzf --zsh)"

# Используем fd для поиска файлов
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} | head -100'"

# Используем fd для поиска каталогов
export FZF_ALT_C_COMMAND='fd --type d'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

# Цветовая схема и другие опции
export FZF_DEFAULT_OPTS="
  --color=bg+:24,hl:65,fg:252,header:204,info:108,pointer:167,marker:174,spinner:108,prompt:109
  --height 40%
  --layout=reverse
  --border
"
# zoxide

eval "$(zoxide init zsh)"

# bat

alias cat='bat --style=full --paging=always --decorations=always'
source ~/.config/broot/launcher/bash/br
