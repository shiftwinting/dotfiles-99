# Dotfiles

Just execute:
```bash
./install.sh
```

Due to the amount of the tools we can install in the terminal, thus polluting `.bashrc` and whatever, I'm not versioning them. Below a list of utils config:
```
bindkey '^f' edit-command-line # zsh only

export EDITOR="nvim"
export GPG_TTY=$(tty)
export MANPAGER='nvim -c "set ft=man" -'

alias glog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gs="git status"
alias gc="git diff --staged && read && git commit"
alias gclear="git checkout master | git branch | grep -v master | xargs git branch -D | git fetch --prune | git prune"
```
