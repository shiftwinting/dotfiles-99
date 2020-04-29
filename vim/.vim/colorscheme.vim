syntax on
set termguicolors

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

function! One() abort
  let g:one_allow_italics = 1
  colorscheme one
endfunction

function! MiraMare() abort
  let g:miramare_enable_italic = 1
  colorscheme miramare
endfunction

if strftime("%H") >= 17
  set background=dark

  let randomColorscheme = s:randnum(4)
  if randomColorscheme == 1
    call Zenburn()
  elseif randomColorscheme == 2
    colorscheme solarized
  elseif randomColorscheme == 3
    call MiraMare()
  else
    call One()
  endif
else
  set background=light

  let randomColorscheme = s:randnum(3)
  if randomColorscheme == 1
    call Pencil()
  elseif randomColorscheme == 2
    call One()
  else
    colorscheme solarized
  endif
endif
