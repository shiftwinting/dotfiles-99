call plug#begin()

" Addons
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-dirvish'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch', { 'commit': '3757ddad87073a6ded8c34dfabb28c325acf6c02' }
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle'] }
Plug 'cohama/lexima.vim' " Insert or delete brackets, parens, quotes in pair.
Plug 'AndrewRadev/splitjoin.vim'
Plug 'lourenci/vim-visual-star-search'
Plug 'moll/vim-bbye', { 'on': ['Bd', 'Bw'] }

Plug 'AndrewRadev/linediff.vim', { 'on': ['Linediff', 'LinediffReset'] }

Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-rooter'

Plug 'mateusbraga/vim-spell-pt-br'

" File system navigation
Plug '/usr/local/opt/fzf' " You need to install fzf yourself: `brew install fzf`
Plug 'junegunn/fzf.vim'
Plug 'wellle/context.vim', { 'on': ['ContextToggle', 'ContextPeek'] }

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

if has('nvim-0.5')
  Plug 'neovim/nvim-lsp'
  Plug 'nvim-lua/completion-nvim'
endif

" Themes
Plug 'reedes/vim-colors-pencil'
Plug 'franbach/miramare'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'whatyouhide/vim-gotham'
Plug 'ayu-theme/ayu-vim'
Plug 'nanotech/jellybeans.vim'

Plug 'AaronLasseigne/yank-code', { 'on': ['YankCode'] }

Plug 'junegunn/rainbow_parentheses.vim', { 'for': ['clojure', 'lisp'] }

Plug 'shuber/vim-promiscuous', { 'on': ['Promiscuous'] }
Plug 'tpope/vim-obsession'

packadd Cfilter

call plug#end()
