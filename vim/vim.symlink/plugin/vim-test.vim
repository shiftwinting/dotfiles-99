if has('nvim')
  let test#strategy = {
        \ 'nearest': 'neovim',
        \ 'file':    'iterm',
        \}
else
  let test#strategy = {
        \ 'nearest': 'vimterminal',
        \ 'file':    'iterm',
        \}
endif

let test#javascript#jest#options = {
      \ 'file':    '--watch --runInBand --notify',
      \}

nmap <silent> <leader>n :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>
