if has('nvim-0.5')
lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.gopls.setup{}
EOF
endif
