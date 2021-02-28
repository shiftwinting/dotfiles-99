. /usr/local/opt/asdf/asdf.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR="nvim"
export GPG_TTY=$(tty)
export MANPAGER='nvim -c "set ft=man" -'

alias glog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gs="git status"
alias gc="git diff --staged && read && git commit"
alias gclear="git checkout master | git branch | grep -v master | xargs git branch -D | git fetch --prune | git prune"

##### ZSH
# Edit command in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Insensitive tab-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

PROMPT='%F{226}%~%f $ '
