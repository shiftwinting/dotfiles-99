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
vnoremap <C-l> 10zl
vnoremap <C-h> 10zh

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

nnoremap <esc> <esc>:noh<return>

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
  nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
  nnoremap <silent> <leader>ac    <cmd>lua vim.lsp.buf.code_action()<CR>
  nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
  nnoremap <silent> [d    <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
  nnoremap <silent> ]d    <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

  inoremap <silent><expr> <C-Space> compe#complete()
  inoremap <silent><expr> <C-y>     compe#confirm('<C-y>')
  inoremap <silent><expr> <C-e>     compe#close('<C-e>')
else
  imap <c-space> <Plug>(asyncomplete_force_refresh)

  nmap <c-]> <plug>(lsp-definition)
  nmap gr <plug>(lsp-references)
  nmap <leader>rn <plug>(lsp-rename)
  nmap K <plug>(lsp-hover)
  nmap gs <plug>(lsp-document-symbol-search)
  nmap gS <plug>(lsp-workspace-symbol-search)
  nmap <leader>ac <cmd>LspCodeAction<cr>
  nmap [g <plug>(lsp-previous-diagnostic)
  nmap ]g <plug>(lsp-next-diagnostic)
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
  nnoremap <Leader>; :tabe <bar> :terminal<CR>
else
  nnoremap <Leader>; <cmd>terminal<CR>
endif

""" Undotree
nnoremap <Leader>u :UndotreeToggle<cr>

" Context
nnoremap \ :ContextPeek<CR>

augroup netrw
  autocmd!
  autocmd FileType netrw nmap <buffer> <Leader>e -
augroup END
