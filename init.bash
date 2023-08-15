export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window=top,wrap"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --no-ignore --exclude={.git,\.cache*,\.ccache*}'
export STARSHIP_CONFIG="~/.config/starship.toml";
export FZF_ALT_C_COMMAND='fd --hidden --type directory --exclude ".git"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
