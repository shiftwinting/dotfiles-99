" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
