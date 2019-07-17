" Change the fzf to use ag
if (executable('ag'))
  let $FZF_DEFAULT_COMMAND='ag --hidden -g ""'
endif

nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Ag <CR>
nnoremap <Leader>o :BTags<CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
nnoremap <Leader>t :Filetypes<CR>

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
