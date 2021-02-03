if has('nvim')
  set completeopt=menuone,noinsert,noselect
  let g:completion_confirm_key = "\<C-y>"
  let g:completion_auto_change_source = 1

  augroup EnableAutocomplete
    autocmd!
    autocmd BufEnter * lua require'completion'.on_attach()
  augroup END
endif
