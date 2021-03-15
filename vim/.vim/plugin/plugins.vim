call plug#begin()

" Addons
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch', { 'commit': '3757ddad87073a6ded8c34dfabb28c325acf6c02' }
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle'] }
Plug 'cohama/lexima.vim' " Insert or delete brackets, parens, quotes in pair.
Plug 'lourenci/vim-visual-star-search'

Plug 'whiteinge/diffconflicts', { 'on': ['DiffConflicts', 'DiffConflictsWithHistory'] }

Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-rooter'

Plug 'mateusbraga/vim-spell-pt-br'

" File system navigation
Plug '/usr/local/opt/fzf' " You need to install fzf yourself: `brew install fzf`
Plug 'junegunn/fzf.vim'
Plug 'wellle/context.vim', { 'on': ['ContextToggle', 'ContextPeek'] }

if has('nvim-0.5')
  Plug 'sheerun/vim-polyglot'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
else
  Plug 'sheerun/vim-polyglot'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
endif

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'savq/melange'

Plug 'shuber/vim-promiscuous', { 'on': ['Promiscuous'] }

packadd Cfilter

call plug#end()
