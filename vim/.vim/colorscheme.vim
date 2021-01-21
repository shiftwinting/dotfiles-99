syntax on
set termguicolors

let output =  system("defaults read -g AppleInterfaceStyle")
if v:shell_error != 0
  set background=light
  let g:pencil_terminal_italics = 1
  colorscheme pencil
else
  set background=dark
  colorscheme jellybeans
endif
