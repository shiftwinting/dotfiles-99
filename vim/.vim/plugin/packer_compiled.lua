-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lourenci/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lourenci/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lourenci/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lourenci/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lourenci/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  diffconflicts = {
    commands = { "DiffConflicts", "DiffConflictsWithHistory" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/diffconflicts"
  },
  fzf = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    commands = { "FZF", "GFiles", "Rg", "History", "Buffers", "BCommits" },
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/fzf\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/fzf.vim"
  },
  ["github-colors"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/github-colors"
  },
  ["lsp_signature.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26config/nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-compe"] = {
    after_files = { "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/nvim-compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/nvim-lsp\frequire\0" },
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27config/nvim-treesitter\frequire\0" },
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/undotree\frequire\0" },
    keys = { { "", "<leader>u" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/undotree"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    keys = { { "", "'<cr>" }, { "", "'<leader>" }, { "", "`<cr>" }, { "", "`<leader>" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/vim-dispatch"
  },
  ["vim-fugitive"] = {
    commands = { "G", "Gdiff", "Gread", "Gwrite", "Gblame", "Gg", "Ggrep", "Gbr" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-indent-object"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-projectionist"
  },
  ["vim-repeat"] = {
    keys = { { "", "." } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-shot-f"] = {
    keys = { { "", "f" }, { "", "F" }, { "", "t" }, { "", "T" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/vim-shot-f"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-visual-star-search"] = {
    keys = { { "", "*" } },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lourenci/.local/share/nvim/site/pack/packer/opt/vim-visual-star-search"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/nvim-lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27config/nvim-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
if vim.fn.exists(":GFiles") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file GFiles lua require("packer.load")({'fzf.vim'}, { cmd = "GFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":History") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file History lua require("packer.load")({'fzf.vim'}, { cmd = "History", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Buffers") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Buffers lua require("packer.load")({'fzf.vim'}, { cmd = "Buffers", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":BCommits") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file BCommits lua require("packer.load")({'fzf.vim'}, { cmd = "BCommits", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Dispatch") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Make") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Make lua require("packer.load")({'vim-dispatch'}, { cmd = "Make", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Focus") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Focus lua require("packer.load")({'vim-dispatch'}, { cmd = "Focus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Start") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Start lua require("packer.load")({'vim-dispatch'}, { cmd = "Start", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":G") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gdiff") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gdiff lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiff", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gread") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gread lua require("packer.load")({'vim-fugitive'}, { cmd = "Gread", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gwrite") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gwrite lua require("packer.load")({'vim-fugitive'}, { cmd = "Gwrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gblame") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gblame lua require("packer.load")({'vim-fugitive'}, { cmd = "Gblame", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gg") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gg lua require("packer.load")({'vim-fugitive'}, { cmd = "Gg", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Ggrep") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Ggrep lua require("packer.load")({'vim-fugitive'}, { cmd = "Ggrep", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Gbr") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gbr lua require("packer.load")({'vim-fugitive'}, { cmd = "Gbr", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":DiffConflicts") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffConflicts lua require("packer.load")({'diffconflicts'}, { cmd = "DiffConflicts", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":DiffConflictsWithHistory") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffConflictsWithHistory lua require("packer.load")({'diffconflicts'}, { cmd = "DiffConflictsWithHistory", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":UndotreeToggle") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file UndotreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndotreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Rg") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Rg lua require("packer.load")({'fzf.vim'}, { cmd = "Rg", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":FZF") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file FZF lua require("packer.load")({'fzf.vim'}, { cmd = "FZF", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader>u <cmd>lua require("packer.load")({'undotree'}, { keys = "<lt>leader>u", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> * <cmd>lua require("packer.load")({'vim-visual-star-search'}, { keys = "*", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> F <cmd>lua require("packer.load")({'vim-shot-f'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> T <cmd>lua require("packer.load")({'vim-shot-f'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> `<leader> <cmd>lua require("packer.load")({'vim-dispatch'}, { keys = "`<lt>leader>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> `<cr> <cmd>lua require("packer.load")({'vim-dispatch'}, { keys = "`<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> '<cr> <cmd>lua require("packer.load")({'vim-dispatch'}, { keys = "'<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> '<leader> <cmd>lua require("packer.load")({'vim-dispatch'}, { keys = "'<lt>leader>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> . <cmd>lua require("packer.load")({'vim-repeat'}, { keys = ".", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> f <cmd>lua require("packer.load")({'vim-shot-f'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> t <cmd>lua require("packer.load")({'vim-shot-f'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs', 'nvim-compe', 'lsp_signature.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
