syntax on
set termguicolors

func! ChangeBackground(auto=0)
  let output =  system("defaults read -g AppleInterfaceStyle")
  if v:shell_error != 0
    set background=light
  else
    set background=dark
  endif
  colorscheme github-colors

  if (a:auto)
    redraw!
  endif
endfunc

call ChangeBackground()
