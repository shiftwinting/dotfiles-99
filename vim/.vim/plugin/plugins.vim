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

Plug 'will133/vim-dirdiff', { 'on': ['DirDiff'] }
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

if has('nvim')
  Plug 'neovim/nvim-lsp'
  Plug 'haorenW1025/completion-nvim'
else
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
endif

Plug 'airblade/vim-gitgutter'

if !has('nvim')
  Plug 'markonm/traces.vim'
endif

" Themes
Plug 'reedes/vim-colors-pencil'
Plug 'rakr/vim-one'
Plug 'franbach/miramare'
Plug 'NLKNguyen/papercolor-theme'
Plug 'wadackel/vim-dogrun'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'whatyouhide/vim-gotham'

Plug 'AaronLasseigne/yank-code', { 'on': ['YankCode'] }

Plug 'junegunn/rainbow_parentheses.vim', { 'for': ['clojure', 'lisp'] }

call plug#end()
