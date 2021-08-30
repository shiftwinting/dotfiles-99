vim.g.fzf_layout = { window = '-tabnew' }
vim.g.fzf_preview_window = {}

vim.cmd("command! -bang GFilesChangedFromMaster call fzf#run(fzf#wrap({'source': 'git diff --name-only --diff-filter=d origin/master'}, <bang>0))")
