" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
