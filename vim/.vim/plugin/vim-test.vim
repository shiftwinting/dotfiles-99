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