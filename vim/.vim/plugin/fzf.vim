let $FZF_DEFAULT_OPTS='--cycle --bind ctrl-j:jump-accept'

" Change the fzf to use ag
if (executable('rg'))
  let $FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --glob "!.git" '
endif

let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_preview_window = []

command! -bang GFilesChangedFromMaster call fzf#run(fzf#wrap({'source': 'git diff --name-only --diff-filter=d origin/master'}, <bang>0))
