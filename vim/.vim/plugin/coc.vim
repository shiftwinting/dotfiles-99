" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
