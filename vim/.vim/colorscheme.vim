syntax on
set termguicolors

let output =  system("defaults read -g AppleInterfaceStyle")
if v:shell_error != 0
  set background=light
  colorscheme toast
else
  set background=dark
  let g:embark_terminal_italics = 1
  colorscheme embark
endif
