NEOVIM_INSTALLED=$?
if [ $NEOVIM_INSTALLED -eq 0 ]; then
  alias vim="nvim -v"
fi

# ruby
alias be="bundle exec"

# git
alias ga='git add -A'
alias gbr='git branch'
alias gc='git ci'
alias gco='git co'
alias gcm='git ci -m'
alias gd='git diff'
alias gl='git l'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias s='git status -sb $argv; return 0'

# git-smart
alias gup='git smart-pull'

# view
alias less='less -r'
alias ll='ls -alGh'
alias ls='ls -Gh'


#alias mss="mysql.server start"
#alias pg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log"

# Don't try to glob with zsh so you can do
# stuff like ga *foo* and correctly have
# git add the right stuff
alias git='noglob git'

# Override rm -i alias which makes rm prompt for every action
# alias rm='nocorrect rm'
