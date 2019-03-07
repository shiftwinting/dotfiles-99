" Change the fzf to use ag
let $FZF_DEFAULT_COMMAND='ag --hidden -g ""'

nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Ag <CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
