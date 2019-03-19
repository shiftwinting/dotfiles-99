let g:lightline = {
      \ 'colorscheme': 'github',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch' ],
      \             [ 'readonly', 'filename'] ],
      \   'right': [ [ 'lineinfo' ],
      \              ['alestatuses'],
      \              [ 'filetype'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename',
      \   'alestatuses': 'AleStatuses'
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%') : '[No Name]'
  let modified = &modified ? '+' : ''
  return filename . modified
endfunction

function! AleStatuses()
 let l:counts = ale#statusline#Count(bufnr(''))

 let l:firstProblem = ale#statusline#FirstProblem(bufnr(''), 'error')
 if empty(l:firstProblem)
   let l:firstProblem = ale#statusline#FirstProblem(bufnr(''), 'warning')
 endif
 if empty(l:firstProblem)
   let l:firstProblem = ale#statusline#FirstProblem(bufnr(''), 'info')
 endif
 if empty(l:firstProblem)
   let l:firstProblem = ale#statusline#FirstProblem(bufnr(''), 'style_error')
 endif
 if empty(l:firstProblem)
   let l:firstProblem = ale#statusline#FirstProblem(bufnr(''), 'style_warning')
 endif
 if empty(l:firstProblem)
   return ''
 endif

 return l:counts.total . 'Ln' . l:firstProblem.lnum
endfunction
