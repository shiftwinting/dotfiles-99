" Change the fzf to use ag
if (executable('rg'))
  let $FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --no-ignore-vcs --glob "!node_modules" --glob "!coverage" --glob "!.git" --glob "!.cache"'
endif

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)

augroup WorkaroundToPreventSegmentFault
  " This should be removed when the https://github.com/neovim/neovim/issues/11548 get merged
  autocmd!
  autocmd FileType fzf set wrap
    \| autocmd BufLeave <buffer> set nowrap
augroup END
