" Change the fzf to use ag
let $FZF_DEFAULT_COMMAND='ag -g ""'
let g:fzf_buffers_jump = 1 " Jump to the existing window if possible

nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Ag <CR>
nnoremap <Leader>o :BTags<CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
