" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Commands for the git extension
nmap ]z <Plug>(coc-git-nextchunk)
nmap [z <Plug>(coc-git-prevchunk)
nmap zs <Plug>(coc-git-chunkinfo)
nmap zu :CocCommand git.chunkUndo<CR>
nnoremap <silent> zh  :<C-u>CocList --normal bcommits<CR>

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
