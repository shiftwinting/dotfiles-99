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

if has('gui_running')
  augroup AutoChangeBackground
    autocmd!
    au OSAppearanceChanged * call ChangeBackground(1)
  augroup END
else
  call ChangeBackground()
endif

