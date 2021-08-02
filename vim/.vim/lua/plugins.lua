local lsp_ft = {'go', 'ruby', 'css', 'scss', 'json', 'yaml', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact'}

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'tpope/vim-repeat', keys = {'.'}}

  use {'tpope/vim-surround'}

  use {'tpope/vim-commentary', keys = {'gc'}}

  use {'tpope/vim-abolish', cmd = {'S'}}

  use 'michaeljsmith/vim-indent-object'

  use 'tpope/vim-projectionist'

  use {
    'tpope/vim-dispatch',
    cmd = {'Dispatch', 'Make', 'Focus', 'Start'},
    keys = {"'<cr>", "'<leader>", "`<cr>", "`<leader>"}
  }

  use {
    'tpope/vim-fugitive',
    requires = {{'tpope/vim-rhubarb', after = 'vim-fugitive'}},
    cmd = {'G', 'Gdiff', 'Gread', 'Gwrite', 'Gblame', 'Gg', 'Ggrep', 'Gbr', 'Gbr!', 'Gcom', 'GFilesChangedFromMaster'}
  }

  use {'whiteinge/diffconflicts', cmd = {'DiffConflicts', 'DiffConflictsWithHistory'}}

  use {
    'junegunn/fzf.vim',
    requires = {{'/usr/local/opt/fzf', after = 'fzf.vim'}},
    config = function() require'config/fzf' end,
    cmd = {'Files', 'GFiles', 'Rg', 'History', 'Buffers', 'BCommits'},
  }

  use {'shuber/vim-promiscuous', cmd = {'Prom'}, requires = {'junegunn/fzf.vim'}}

  use {'mbbill/undotree', cmd = {'UndotreeToggle'}, config = function() require'config/undotree' end }

  use {'lourenci/vim-visual-star-search', keys = {'*', '#'}}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {{'JoosepAlviste/nvim-ts-context-commentstring'}},
    config = function() require'config/nvim-treesitter' end,
  }

  use {
    'hrsh7th/nvim-compe',
    event = 'InsertEnter',
    config = function() require'config/nvim-compe' end,
    ft = lsp_ft
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require'config/nvim-lsp' end,
    ft = lsp_ft,
  }

  use 'lourenci/github-colors'

  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function() require'config/nvim-autopairs' end,
  }
end)
