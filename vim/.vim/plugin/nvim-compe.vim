if has('nvim')
  set completeopt=menuone,noselect

  let g:compe = {}
  let g:compe.enabled = v:true
  let g:compe.min_length = 2
  let g:compe.autocomplete = v:true
  let g:compe.source = {}
  let g:compe.source.nvim_lsp = v:true
  let g:compe.source.buffer = v:true
  let g:compe.source.path = v:true
endif
