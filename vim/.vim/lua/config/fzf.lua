vim.env.FZF_DEFAULT_OPTS = '--cycle --bind ctrl-j:jump-accept'

if vim.fn.executable('rg') == 1 then
 vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --smart-case --glob "!.git" '
end

vim.g.fzf_layout = { window = '-tabnew' }
vim.g.fzf_preview_window = {}

vim.cmd("command! -bang GFilesChangedFromMaster call fzf#run(fzf#wrap({'source': 'git diff --name-only --diff-filter=d origin/master'}, <bang>0))")
