setopt PROMPT_SUBST

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '●'
zstyle ':vcs_info:*' unstagedstr '○'
zstyle ':vcs_info:*' formats '(%F{cyan}%b%F{red}%c%u%f) '
precmd() {
    vcs_info
}

PROMPT="%F{red}%m %F{blue}%~%f %# "
RPROMPT='${vcs_info_msg_0_}%F{yellow}%*%f'
