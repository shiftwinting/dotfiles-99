if exists('g:started_by_firenvim')
  set laststatus=0
  set guifont=Menlo:h12
  augroup SetMarkdownForSomePages
    autocmd!
    autocmd BufEnter github.com_*.txt set filetype=markdown
    autocmd BufEnter reddit.com_*.txt set filetype=markdown
  augroup END
  let g:firenvim_config = {
      \ 'localSettings': {
          \ '.*': {
              \ 'takeover': 'never',
          \ },
      \ }
  \ }
endif
