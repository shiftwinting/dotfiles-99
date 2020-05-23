""""""""""""""""""" GENERAL MAPPINGS
let mapleader = "\<space>"

" Relative path to clipboard
nnoremap <Leader>rp :let @*=expand("%")<CR>

nnoremap <M-a> ggVG

nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>

nnoremap <C-l> 10zl
nnoremap <C-h> 10zh

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Get off my lawn - helpful when learning Vim :)
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
vnoremap <Up>     <NOP>
vnoremap <Down>   <NOP>
vnoremap <Left>   <NOP>
vnoremap <Right>  <NOP>

"""""""""""""" PLUGINS MAPS
"""" LSP

if has('nvim')
  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
  nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> completion#trigger_completion()
else
  nmap <silent> gd <Plug>(coc-definition)
  nmap <leader>rn <Plug>(coc-rename)
  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()
  nmap <silent> [z <Plug>(coc-diagnostic-prev)
  nmap <silent> ]z <Plug>(coc-diagnostic-next)
endif

""""" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Rg <CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
nnoremap <Leader>t :Filetypes<CR>
nnoremap <Leader>0 :GFilesChangedFromMaster<CR>
nnoremap <Leader>l :BCommits<CR>
nnoremap <Leader>n :NoteFiles<CR>
nnoremap <Leader>c :Promiscuous<CR>

nnoremap <Leader>; :tabe <bar> :terminal<CR>
if has('nvim')
  tnoremap <C-o> <C-\><C-N>
endif

""" Undotree
nnoremap <Leader>u :UndotreeToggle<cr>

"" Projectionist
nnoremap <Leader>a :A<CR>

" Context
nnoremap <Leader>\ :ContextPeek<CR>

" Dirvish
nmap \ <Plug>(dirvish_up)

nnoremap <Leader>ww :tabe ~/Library/Mobile\ Documents/com~apple~CloudDocs/notes<CR>
nnoremap <Leader>wn :tabe ~/Library/Mobile\ Documents/com~apple~CloudDocs/notes/scratch/`date +\%Y-\%m-\%d`.md<CR>
