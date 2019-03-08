call plug#begin()

" Addons
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'lourenci/nerdtree-yank-node-plugin', { 'tag': '*', 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'itchyny/lightline.vim'
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
Plug 'junegunn/gv.vim'
Plug 'janko-m/vim-test'
Plug 'chrisbra/Colorizer', { 'for': ['css', 'scss'] }
Plug 'mbbill/undotree'
Plug 'junegunn/vim-peekaboo'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'alvan/vim-closetag', { 'for': ['html', 'javascript.jsx'] }
Plug 'PeterRincker/vim-argumentative'
Plug 'tommcdo/vim-exchange'
Plug 'google/vim-searchindex'

" File system navigation
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails', { 'for': 'ruby' }

if has('nvim')
  " you gotta install the wip rpc-node-plugin for vim
  Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
endif

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haishanh/night-owl.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'whatyouhide/vim-gotham'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()
