" Change the fzf to use ag
if (executable('rg'))
  let $FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --no-ignore-vcs --glob "!node_modules" --glob "!coverage" --glob "!.git" --glob "!.cache"'
endif

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.85 } }

command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)

command! -bang NoteFiles call fzf#vim#files('~/Library/Mobile Documents/com~apple~CloudDocs/notes', <bang>0)

command! -bang GFilesChangedFromMaster call fzf#run(fzf#wrap({'source': 'git diff --name-only master'}, <bang>0))
