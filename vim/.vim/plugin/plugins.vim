call plug#begin()

" Addons
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'lourenci/nerdtree-yank-node-plugin', { 'tag': '*', 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise', { 'for': ['ruby', 'vim'] }
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'andymass/vim-matchup' " Expand % match to a lot of languages and hightlight it
Plug 'tpope/vim-commentary'
Plug 'farmergreg/vim-lastplace' " When reopen a buffer, puts the cursor where it was last time
Plug 'michaeljsmith/vim-indent-object'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'janko-m/vim-test'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'alvan/vim-closetag', { 'for': ['html', 'javascript.jsx'] }
Plug 'PeterRincker/vim-argumentative'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'nelstrom/vim-visual-star-search'

Plug 'tpope/vim-projectionist'
Plug 'rhysd/git-messenger.vim'

Plug 'mateusbraga/vim-spell-pt-br'

" File system navigation
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

Plug 'junegunn/goyo.vim', { 'on': ['Goyo'] }

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

if !has('nvim')
  Plug 'markonm/traces.vim'
endif

" Themes
if !has('gui_running')
  Plug 'arakashic/nvim-colors-solarized'
else
  Plug 'altercation/vim-colors-solarized'
endif
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haishanh/night-owl.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'whatyouhide/vim-gotham'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/gruvbox-material'
Plug 'reedes/vim-colors-pencil'

call plug#end()
