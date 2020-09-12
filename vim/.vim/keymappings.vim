""""""""""""""""""" GENERAL MAPPINGS
let mapleader = "\<space>"

nnoremap [Q :cfirst<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>
nnoremap ]Q :clast<CR>
nnoremap [L :lfirst<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>
nnoremap ]L :llast<CR>

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

nnoremap <Leader>yr :let @*=expand('%')<CR>

"""""""""""""" PLUGINS MAPS
"""" LSP

if has('nvim')
  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
  nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
  nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> completion#trigger_completion()
  nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
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

if has('nvim')
  tnoremap <C-u> <C-\><C-N><C-u>
  tnoremap <C-b> <C-\><C-N><C-b>
  tnoremap <C-y> <C-\><C-N><C-y>
endif

""" Undotree
nnoremap <Leader>u :UndotreeToggle<cr>

"" Projectionist
nnoremap <Leader>a :A<CR>

" Context
nnoremap \ :ContextPeek<CR>

nnoremap <Leader>e :Ex<CR>

nnoremap <Leader>ww :tabe ~/Library/Mobile\ Documents/com~apple~CloudDocs/notes<CR>
nnoremap <Leader>wn :tabe ~/Library/Mobile\ Documents/com~apple~CloudDocs/notes/scratch/`date +\%Y-\%m-\%d`.md<CR>
