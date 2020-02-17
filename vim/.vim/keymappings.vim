""""""""""""""""""" GENERAL MAPPINGS
let mapleader = "\<space>"

" Relative path to clipboard
nnoremap <Leader>rp :let @*=expand("%")<CR>

nnoremap <M-a> ggVG

nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>

nnoremap <C-l> 10zl
nnoremap <C-h> 10zh

nnoremap <Leader>rm :!rm %<CR>

" Change to the last active tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap gl :exe "tabn ".g:lasttab<CR>
augroup SetLastTab
  autocmd!
  autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Get off my lawn - helpful when learning Vim :)
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
vnoremap <Up>     <NOP>
vnoremap <Down>   <NOP>
vnoremap <Left>   <NOP>
vnoremap <Right>  <NOP>

"""""""""""""" PLUGINS MAPS
"""" Coc

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> [z <Plug>(coc-diagnostic-prev)
nmap <silent> ]z <Plug>(coc-diagnostic-next)

" Commands for the git extension
nmap ]g <Plug>(coc-git-nextchunk)
nmap [g <Plug>(coc-git-prevchunk)
nmap <leader>gi <Plug>(coc-git-chunkinfo)
nmap <leader>gu :CocCommand git.chunkUndo<CR>
nmap <leader>gs :CocCommand git.chunkStage<CR>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> <leader>c :<C-u>CocList --tab --normal bcommits<CR>
nnoremap <silent> <Leader>o  :<C-u>CocList --tab outline<CR>

""""" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>9 :GFiles?<CR>
nnoremap <Leader>/ :Rg <CR>
nnoremap <Leader>. :History<CR>
nnoremap <Leader>, :Buffers<CR>
nnoremap <Leader>t :Filetypes<CR>
nnoremap <Leader>0 :GFilesChangedFromMaster<CR>

""" Undotree
nnoremap <Leader>\ :UndotreeToggle<cr>

"" Projectionist
nnoremap <Leader>a :A<CR>

" Context
nnoremap \ :ContextPeek<CR>
