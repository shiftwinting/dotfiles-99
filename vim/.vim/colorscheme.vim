syntax on
set termguicolors

function! Pencil() abort
  set background=light
  let g:pencil_terminal_italics = 1
  colorscheme pencil
endfunction

function! s:randnum(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction

function! MiraMare() abort
  let g:miramare_enable_italic = 1
  colorscheme miramare
endfunction

if strftime("%H") >= 17 || $VIM_NIGHT == 1
  set background=dark

  let randomColorscheme = s:randnum(5)
  if randomColorscheme == 0
    call MiraMare()
  elseif randomColorscheme == 1
    colorscheme dogrun
  elseif randomColorscheme == 2
    colorscheme nightfly
  elseif randomColorscheme == 3
    colorscheme gotham
  elseif randomColorscheme == 4
    let ayucolor="mirage"
    colorscheme ayu
  endif
else
  set background=light

  let randomColorscheme = s:randnum(2)
  if randomColorscheme == 0
    call Pencil()
  elseif randomColorscheme == 1
    let ayucolor="light"
    colorscheme ayu
  endif
endif
