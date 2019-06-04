" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Commands for the git extension
nmap ]g <Plug>(coc-git-nextchunk)
nmap [g <Plug>(coc-git-prevchunk)
nmap gs <Plug>(coc-git-chunkinfo)
nmap gu :CocCommand git.chunkUndo<CR>
nmap gh :CocCommand git.browserOpen<CR>

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
