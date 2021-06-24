if has('nvim-0.5')
lua <<EOF
require'treesitter-context.config'.setup{
  enable = false
}
EOF
endif

