let g:fern#default_hidden = 1
nmap g? <Plug>(fern-action-help)
nmap <tab> <Plug>(fern-action-mark-toggle)

" Disable netrw
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  if !isdirectory(expand('%'))
    return
  endif
  Fern %
endfunction
