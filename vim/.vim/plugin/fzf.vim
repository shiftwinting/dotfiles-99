" Change the fzf to use ag
if (executable('rg'))
  let $FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --no-ignore-vcs --glob "!node_modules" --glob "!coverage" --glob "!.git"'
endif

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
