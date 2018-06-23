call plug#begin('~/.vim/plugged')

" Addons
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yegappan/mru' " Shows the most recent opened files
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise' " Close 'begin end' ruby tag wisely
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit' " Expand % match to a lot of languages
Plug 'vim-scripts/tComment'
Plug 'farmergreg/vim-lastplace'
Plug 'michaeljsmith/vim-indent-object'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'janko-m/vim-test'
Plug 'chrisbra/Colorizer' " Display hex colors

" File system navigation
Plug 'junegunn/fzf', { 'dir': '~/.vim/plugged/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" Syntax highlighting
Plug 'vim-ruby/vim-ruby'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'tpope/vim-rails'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown' " Markdown support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag' " Autoclose HTML tags
Plug 'Valloric/MatchTagAlways' " Highlight HTML tags

" Syntax errors
Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()
