syntax on

function! Zenburn() abort
  let g:zenburn_disable_Label_underline = 1
  colorscheme zenburn

  highlight LineNr guifg=#4f4f4f guibg=NONE
  highlight CursorLineNr guibg=#434443
  highlight SignColumn guibg=NONE
endfunction

function! Pencil() abort
  set background=light
  let g:pencil_terminal_italics = 1
  colorscheme pencil
endfunction

function! Solarized() abort
  set background=light
  colorscheme solarized
endfunction

function! s:randnum(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction

if strftime("%H") >= 17
  call Zenburn()
else
  let randomColorscheme = s:randnum(2)
  if randomColorscheme == 1
    call Pencil()
  else
    call Solarized()
  endif
endif
