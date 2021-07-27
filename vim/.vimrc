lua require('plugins')
source ~/.config/nvim/keymappings.vim
source ~/.config/nvim/colorscheme.vim

set hidden                            " Allows change the buffer without the needs to save it
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set clipboard=unnamed,unnamedplus     " Clipboard support (OSX)
set laststatus=2                      " Show status line on startup
set nowrap                            " Don't wrap long lines
set showbreak=↪
set nobackup nowritebackup noswapfile " Turn off backup files
set noerrorbells novisualbell         " Turn off visual and audible bells
set expandtab shiftwidth=2 tabstop=2  " Two spaces for tabs everywhere
set history=500                       " Number of commands history to store
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set noshowmode                        " Do not show the mode below the statusline
set showcmd                           " shows partial commands in the right bottom of screen
set synmaxcol=300                     " make syntax highligh works just for the first 300 chars
set diffopt+=indent-heuristic,algorithm:histogram
set undofile
set number relativenumber " Enable line numbers
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
set shortmess+=c
set shortmess-=S " Show how many matches / ? have
set belloff=all
set updatetime=750
if !has('gui_running')
  set mouse=a
endif
set inccommand=split
set undodir=~/.config/nvim/undo/
set lazyredraw

if !has('gui_running')
  augroup LoadChangedFileExternally
    autocmd!
    autocmd FocusGained,VimResume * if getcmdwintype() == '' | checktime | endif
  augroup END
endif

augroup RemoveTraillingSpaces
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup StartTerminalInInsertMode
  " https://github.com/neovim/neovim/issues/8816
  autocmd!
  autocmd TermOpen term://* startinsert
augroup END

augroup AutoCloseTerminal
  autocmd!
  autocmd TermClose term://\(*zsh\|*git*\) call nvim_input('<CR>')
augroup END

command! -nargs=* Gpatch :tabe term://git add -p <args>
augroup HighlightYank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=250}
augroup END

command! TODOs :noautocmd vimgrep /\<todo\>\|\<fixme\>/ `git diff --name-only --diff-filter=d origin/master`
command! TODOsAll :noautocmd vimgrep /\<todo\>\|\<fixme\>/ `git ls-files`

function! Mkdir(dir)
  if !isdirectory(a:dir)
    call mkdir(a:dir, "p")
  endif
endfunction
command! W call Mkdir(expand("%:p:h")) | write
command! -nargs=1 Rm exe "!rm" <q-args> | bw! <q-args>

let g:netrw_banner = 0
let g:netrw_altfile = 1 " wipe netrw buffer on file selection
let g:netrw_list_hide = '^\.\.\=/\=$' " Don't show './' and '../' paths
let g:netrw_use_errorwindow = 0
