nmap fs <plug>(GrepperOperator)
xmap fs <plug>(GrepperOperator)
nnoremap <leader>f :Grepper<cr>

command! Todo :Grepper -tool git -noprompt -query '\(TODO\|FIXME\)'
