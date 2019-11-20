" Change the fzf to use ag
if (executable('rg'))
  let $FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --no-ignore-vcs --glob "!node_modules" --glob "!coverage" --glob "!.git" --glob "!.cache"'
endif

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
