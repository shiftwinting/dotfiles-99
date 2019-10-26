" Change the fzf to use ag
if (executable('ag'))
  let $FZF_DEFAULT_COMMAND='ag --hidden -g ""'
endif

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
