call plug#begin('~/.vim/plugged')

" Addons
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yegappan/mru'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'ervandew/supertab'
" Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'vim-scripts/tComment'
" Plug 'jremmen/vim-ripgrep'
" Plug 'blarghmatey/split-expander'
" Plug 'farmergreg/vim-lastplace'

" Tmux integration
" Plug 'benmills/vimux'
" Plug 'christoomey/vim-tmux-navigator'

" File system navigation
Plug 'tpope/vim-eunuch'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.vim/plugged/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" Syntax highlighting
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown'
" Plug 'kchmck/vim-coffee-script'
" Plug 'groenewege/vim-less'
" Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Plug 'jparise/vim-graphql'
" Plug 'zerowidth/vim-copy-as-rtf'
Plug 'michaeljsmith/vim-indent-object'
Plug 'alvan/vim-closetag'

" Syntax errors
Plug 'vim-syntastic/syntastic'
Plug 'ntpeters/vim-better-whitespace'
Plug 'w0rp/ale'

" Markdown support
Plug 'junegunn/goyo.vim'

" Git support
Plug 'tpope/vim-fugitive'

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'icymind/NeoSolarized'
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

" Testing
Plug 'janko-m/vim-test'

" Display hex colors
Plug 'chrisbra/Colorizer'

" Gist
" Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

call plug#end()
