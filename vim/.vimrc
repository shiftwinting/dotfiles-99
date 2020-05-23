" Settings in this file may depend on plugins, so let's install them first.
" Not to be confused with the contents of ~/.vim/plugin/* which are
" configuration options for each plugin and automatically loaded by Vim.
if has('nvim')
  source ~/.config/nvim/plugin/plugins.vim
  source ~/.config/nvim/keymappings.vim
  source ~/.config/nvim/colorscheme.vim
else
  source ~/.vim/plugin/plugins.vim
  source ~/.vim/keymappings.vim
  source ~/.vim/colorscheme.vim
endif

set hidden                            " Allows change the buffer without the needs to save it
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set clipboard=unnamed,unnamedplus     " Clipboard support (OSX)
set laststatus=2                      " Show status line on startup
set nowrap                            " Don't wrap long lines
set nobackup nowritebackup noswapfile " Turn off backup files
set noerrorbells novisualbell         " Turn off visual and audible bells
set expandtab shiftwidth=2 tabstop=2  " Two spaces for tabs everywhere
set history=500                       " Number of commands history to store
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits to the bottom
set noshowmode                        " Do not show the mode below the statusline
set showcmd                           " shows partial commands in the right bottom of screen
set encoding=utf-8
set synmaxcol=300                     " make syntax highligh works just for the first 300 chars
set diffopt+=indent-heuristic,algorithm:patience
set undofile
set number relativenumber " Enable line numbers
set foldmethod=indent
set nofoldenable
set cursorline " Highlight on current line
set shortmess+=c
set completeopt=menuone,noinsert,noselect
if !has('gui_running')
  set mouse=a
endif
if has('nvim')
  set inccommand=split
  set undodir=~/.config/nvim/undo/
else
  set undodir=~/.vim/undo/
endif

" Change keyboard to USA layout on vim enter
if executable('xkbswitch')
  augroup SetEnglishKeyboard
    autocmd!
    autocmd VimEnter * silent !{xkbswitch -se US}
  augroup END
endif

if !has('gui_running')
  augroup LoadChangedFileExternally
    autocmd!
    autocmd FocusGained,CursorHold ?* if getcmdwintype() == '' | checktime | endif
  augroup END
endif

augroup RemoveTraillingSpaces
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
augroup END

if executable('rg')
  set grepprg=rg\ --vimgrep\ --hidden\ --smart-case\ --glob\ '!.git'
endif

" This cmd is causing 'Segment fault' when the buffer has 4000 chars.
" To simulate the problem: insert 4000 chars and open the terminal.
" E.g.: 4000ia<esc>:terminal
if has('nvim')
  augroup StartTerminalInInsertMode
    " https://github.com/neovim/neovim/issues/8816
    autocmd!
    autocmd TermOpen term://* startinsert
  augroup END

  augroup HighlightYank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 250)
  augroup END
endif

command! TODOs :noautocmd vimgrep /\<todo\>\|\<fixme\>/ `git diff --name-only --diff-filter=d origin/master`
command! TODOsAll :noautocmd vimgrep /\<todo\>\|\<fixme\>/ `git ls-files`
