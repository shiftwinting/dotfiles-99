call plug#begin()

" Addons
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive', { 'on': ['G', 'Gdiff', 'Gread', 'Gwrite', 'Gblame'] }
Plug 'tpope/vim-dispatch'
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle'] }
Plug 'lourenci/vim-visual-star-search'

Plug 'whiteinge/diffconflicts', { 'on': ['DiffConflicts', 'DiffConflictsWithHistory'] }

Plug 'tpope/vim-projectionist'

" File system navigation
Plug '/usr/local/opt/fzf' " You need to install fzf yourself: `brew install fzf`
Plug 'junegunn/fzf.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'ray-x/lsp_signature.nvim'

Plug 'windwp/nvim-autopairs'

" Themes
Plug 'lourenci/github-colors'

Plug 'tversteeg/registers.nvim'

packadd Cfilter

call plug#end()
