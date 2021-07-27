. /usr/local/opt/asdf/asdf.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR="nvim"
export GPG_TTY=$(tty)
export MANPAGER='nvim -c "set ft=man" -'
export LC_ALL='en_US.UTF-8'

alias glog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gs="git status"
alias gmm="git fetch --prune && git merge origin/master"
alias gclear="git checkout master | git branch | grep -v master | xargs git branch -D | git fetch --prune | git prune"

##### ZSH
# Edit command in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^f' edit-command-line

# Insensitive tab-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Set PROMPT colors
autoload colors && colors

local green="%{$fg_bold[green]%}"
local red="%{$fg_bold[red]%}"
local yellow="%{$fg_bold[yellow]%}"
local blue="%{$fg_bold[blue]%}"
local reset="%{$reset_color%}"

local current_dir_color=$blue
local current_dir="%~"

local current_dir_output="$current_dir_color$current_dir$reset"
local jobs_bg="${red}%j ⚙$reset"
local last_command_output="%(?.%(!.$red.$green).$yellow)"

PROMPT="
$current_dir_output%1(j. [$jobs_bg].)"
PROMPT+="
$last_command_output\$$reset "
