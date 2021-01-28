syntax on
set termguicolors

let output =  system("defaults read -g AppleInterfaceStyle")
if v:shell_error != 0
  set background=light
  colorscheme tempus_dawn
else
  set background=dark
  colorscheme tempus_classic
endif
