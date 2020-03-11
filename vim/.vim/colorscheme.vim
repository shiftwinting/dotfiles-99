syntax on

function! Zenburn() abort
  let g:zenburn_disable_Label_underline = 1
  colorscheme zenburn
endfunction

function! Pencil() abort
  set background=light
  let g:pencil_terminal_italics = 1
  colorscheme pencil
endfunction

function! s:randnum(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction

if strftime("%H") >= 17
  let randomColorscheme = s:randnum(2)
  if randomColorscheme == 1
    call Zenburn()
  else
    set background=dark
    colorscheme solarized
  endif
else
  let randomColorscheme = s:randnum(2)
  if randomColorscheme == 1
    call Pencil()
  else
    set background=light
    colorscheme solarized
  endif
endif
