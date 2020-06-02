call plug#begin()

" Addons
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise', { 'for': ['ruby', 'vim'] }
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-dirvish'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch', { 'commit': '3757ddad87073a6ded8c34dfabb28c325acf6c02' }
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle'] }
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'alvan/vim-closetag', { 'for': ['html', 'javascriptreact', 'javascript'] }
Plug 'PeterRincker/vim-argumentative'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'lourenci/vim-visual-star-search'
Plug 'moll/vim-bbye', { 'on': ['Bd', 'Bw'] }
Plug 'shuber/vim-promiscuous', { 'on': ['Promiscuous'] }

Plug 'AndrewRadev/linediff.vim', { 'on': ['Linediff', 'LinediffReset'] }

Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-rooter'

Plug 'mateusbraga/vim-spell-pt-br'

" File system navigation
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'wellle/context.vim', { 'on': ['ContextToggle', 'ContextPeek'] }

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

if has('nvim-0.5')
  Plug 'neovim/nvim-lsp'
  Plug 'haorenW1025/completion-nvim'
endif

" Themes
Plug 'reedes/vim-colors-pencil'
Plug 'franbach/miramare'
Plug 'wadackel/vim-dogrun'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'whatyouhide/vim-gotham'
Plug 'ayu-theme/ayu-vim'

Plug 'AaronLasseigne/yank-code', { 'on': ['YankCode'] }

Plug 'junegunn/rainbow_parentheses.vim', { 'for': ['clojure', 'lisp'] }

call plug#end()
