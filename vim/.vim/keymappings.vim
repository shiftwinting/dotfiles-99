""""""""""""""""""" GENERAL MAPPINGS
map <Space> <leader>

" Relative path to clipboard
nnoremap <Leader>rp :let @*=expand("%")<CR>

nnoremap <M-a> ggVG

nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>

nnoremap <C-l> 10zl
nnoremap <C-h> 10zh

" Change to the last active tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap gl :exe "tabn ".g:lasttab<CR>
augroup SetLastTab
  autocmd!
  autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

" Get off my lawn - helpful when learning Vim :)
nnoremap <Up>     <NOP>
nnoremap <Down>   <NOP>
nnoremap <Left>   <NOP>
nnoremap <Right>  <NOP>
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
vnoremap <Up>     <NOP>
vnoremap <Down>   <NOP>
vnoremap <Left>   <NOP>
vnoremap <Right>  <NOP>

if has('nvim')
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
  tnoremap <C-w>o <C-\><C-n><C-w>o
  tnoremap <C-w>v <C-\><C-n><C-w>v
  tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
  tnoremap <C-d> <C-\><C-n><C-d>
  tnoremap <C-u> <C-\><C-n><C-u>
  tnoremap <C-f> <C-\><C-n><C-f>
  tnoremap <C-b> <C-\><C-n><C-b>
endif

"""""""""""""" PLUGINS MAPS
"""" Coc

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Commands for the git extension
nmap ]z <Plug>(coc-git-nextchunk)
nmap [z <Plug>(coc-git-prevchunk)
nmap zs <Plug>(coc-git-chunkinfo)
nmap zu :CocCommand git.chunkUndo<CR>
nnoremap <silent> zh  :<C-u>CocList --normal bcommits<CR>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""""" FZF
nnoremap <Leader>p :FZF!<CR>
nnoremap <Leader>9 :GFiles!?<CR>
nnoremap <Leader>/ :Ag! <CR>
nnoremap <Leader>o :BTags!<CR>
nnoremap <Leader>. :History!<CR>
nnoremap <Leader>, :Buffers!<CR>
nnoremap <Leader>t :Filetypes!<CR>

""""" Nerdtree
map <F3> :NERDTreeToggle<CR>
map - :NERDTreeFind<CR>

""" Undotree
nnoremap <F5> :UndotreeToggle<cr>

"" Projectionist
nnoremap <Leader>a :A<CR>

"" Test
nmap <silent> <leader>n :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>