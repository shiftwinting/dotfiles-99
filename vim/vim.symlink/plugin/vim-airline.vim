function! RemoveUnwantedStatus()
  let g:airline_section_y = g:airline_section_x
  unlet g:airline_section_x
endfunction

autocmd VimEnter * call RemoveUnwantedStatus()

let g:airline_symbols_ascii = 1
let g:airline#extensions#hunks#enabled = 0
