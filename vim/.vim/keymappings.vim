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
nnoremap [A :first<CR>
nnoremap ]a :next<CR>
nnoremap [a :prev<CR>
nnoremap ]A :last<CR>

nnoremap ]c ]czz
nnoremap [c [czz
nnoremap <Leader>yr :let @*=expand('%')<CR>

"""""""""""""" PLUGINS MAPS
"""" LSP

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
vnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.range_formatting()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
inoremap <silent> <c-s> <cmd>lua vim.lsp.handlers.signature_help()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <leader>ca    <cmd>lua vim.lsp.buf.code_action()<CR>
vnoremap <silent> <leader>ca    <cmd>lua vim.lsp.buf.range_code_action()<CR>
nnoremap <silent> <leader>e    <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> [d    <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d    <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

"" keymaps for completion is in ./lua/config/nvim-compe.lua

" refactoring
vnoremap <silent> <leader>re    <esc><cmd>lua require('refactoring').refactor('Extract Function')<CR>
vnoremap <silent> <leader>rf    <esc><cmd>lua require('refactoring').refactor('Extract Function To File')<CR>
vnoremap <silent> <leader>rv    <esc><cmd>lua require('refactoring').refactor('Extract Variable')<CR>
vnoremap <silent> <leader>ri    <esc><cmd>lua require('refactoring').refactor('Inline Variable')<CR>

" v-snip
imap <expr> <c-y>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<c-y>'
smap <expr> <c-y>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<c-y>'

""""" fuzzy
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Rg<CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
nnoremap <Leader>l :BCommits<CR>
nnoremap <Leader>0 :GFilesChangedFromMaster<CR>

nnoremap <Leader>; :tabe <bar> :terminal<CR>

""" Undotree
nnoremap <Leader>u :UndotreeToggle<cr>
