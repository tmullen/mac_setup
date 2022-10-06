# # fzf shell extentions
# export PATH = "/usr/local/opt/fzf/install:$PATH"

# partial completion suggestions
#  zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix 

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
