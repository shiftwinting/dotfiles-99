if has('nvim')
lua << EOF
require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
require'nvim_lsp'.cssls.setup{on_attach=require'completion'.on_attach}
require'nvim_lsp'.solargraph.setup{on_attach=require'completion'.on_attach}
EOF
  let g:completion_confirm_key = "\<C-y>"
endif
