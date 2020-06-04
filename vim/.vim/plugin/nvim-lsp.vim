if has('nvim-0.5')
lua << EOF
require'nvim_lsp'.tsserver.setup{}
require'nvim_lsp'.cssls.setup{}
require'nvim_lsp'.solargraph.setup{}
EOF
endif
