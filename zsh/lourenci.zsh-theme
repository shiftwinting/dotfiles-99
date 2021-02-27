# Leandro Lourenci's theme
# We don't need git branch status because we already have it on iTerm status bar.

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

PROMPT='
$current_dir_output%1(j. [$jobs_bg].)'
PROMPT+="
$last_command_output\$$reset "
RPROMPT=''
