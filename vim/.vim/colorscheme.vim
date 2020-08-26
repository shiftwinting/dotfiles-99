syntax on
set termguicolors

if strftime("%H") >= 17 || $VIM_NIGHT == 1
  set background=dark
  colorscheme nightfly
else
  set background=light
  let g:pencil_terminal_italics = 1
  colorscheme pencil
endif
