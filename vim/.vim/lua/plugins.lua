return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'tpope/vim-repeat', keys = {{'n', '.'}}}

  use {'tpope/vim-surround'}

  use {'tpope/vim-commentary', keys = {{'n', 'gc'}, { 'v', 'gc'}}}

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
    cmd = {'G', 'Gdiff', 'Gread', 'Gwrite', 'Gblame', 'Gg', 'Ggrep', 'Gbr', 'Gbr!', 'Gcom'}
  }

  use {'whiteinge/diffconflicts', cmd = {'DiffConflicts', 'DiffConflictsWithHistory'}}

  use {
    'junegunn/fzf.vim',
    requires = {{'/usr/local/opt/fzf', after = 'fzf.vim'}},
    config = function() require'config/fzf' end,
    cmd = {'Files', 'GFiles', 'Rg', 'History', 'Buffers', 'BCommits', 'GFilesChangedFromMaster'},
  }

  use {'shuber/vim-promiscuous', cmd = {'Prom'}, requires = {'junegunn/fzf.vim'}}

  use {'mbbill/undotree', cmd = {'UndotreeToggle'}, config = function() require'config/undotree' end }

  use {'lourenci/vim-visual-star-search', keys = {{'v', '*' }, {'v', '#'}}}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require'config/nvim-treesitter' end,
  }
  use {'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter'}
  use {'windwp/nvim-ts-autotag', after = 'nvim-treesitter'}
  use {
    "ThePrimeagen/refactoring.nvim",
    ft = {'go', 'lua', 'python', 'typescript', 'typescriptreact', 'javascript', 'javascriptreact'}, -- see https://github.com/ThePrimeagen/refactoring.nvim/tree/master/queries
    requires = {{"nvim-lua/plenary.nvim", after = 'refactoring.nvim'}}
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require'config/nvim-lsp' end,
    ft = {'go', 'ruby', 'css', 'scss', 'json', 'yaml', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'dockerfile'},
  }
  use {
    'ray-x/lsp_signature.nvim',
    after = 'nvim-lspconfig',
  }
  use {
    'hrsh7th/nvim-cmp',
    after = 'nvim-lspconfig',
    config = function() require'config/nvim-compe' end,
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after = 'nvim-cmp',
    config = function() require('cmp_nvim_lsp').setup {} end,
  }
  use {
    'hrsh7th/cmp-vsnip',
    requires = {'hrsh7th/vim-vsnip', after = 'cmp-vsnip'},
    after = 'nvim-cmp',
  }

  use 'lourenci/github-colors'

  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function() require'config/nvim-autopairs' end,
  }
end)
