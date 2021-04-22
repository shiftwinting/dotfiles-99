if has('nvim')
  set completeopt=menuone,noselect

  let g:compe = {}
  let g:compe.enabled = v:true
  let g:compe.autocomplete = v:true
  let g:compe.preselect = 'disable'
  let g:compe.source = {}
  let g:compe.source.nvim_lsp = v:true
  let g:compe.source.buffer = v:true
  let g:compe.source.path = v:true
  let g:compe.source.vim_dadbod_completion = v:true
endif
