return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'tpope/vim-repeat', keys = {'.'}}

  use 'tpope/vim-surround'

  use 'tpope/vim-commentary'

  use 'tpope/vim-sleuth'

  use 'michaeljsmith/vim-indent-object'

  use 'tpope/vim-projectionist'

  use {
    'tpope/vim-dispatch',
    cmd = {'Dispatch', 'Make', 'Focus', 'Start'},
    keys = {"'<cr>", "'<leader>", "`<cr>", "`<leader>"}
  }

  use {
    'tpope/vim-fugitive',
    requires = {{'tpope/vim-rhubarb'}},
    cmd = {'G', 'Gdiff', 'Gread', 'Gwrite', 'Gblame', 'Gg', 'Ggrep', 'Gbr'}
  }

  use {'whiteinge/diffconflicts', cmd = {'DiffConflicts', 'DiffConflictsWithHistory'}}

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = function() require'config/telescope' end,
    cmd = {'Telescope'}
  }

  use {'mbbill/undotree', cmd = {'UndotreeToggle'}, config = function() require'config/undotree' end, keys = {'<leader>u'} }

  use {'lourenci/vim-visual-star-search', keys = {'v *'}}

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
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require'config/nvim-lsp' end,
    requires = {{'ray-x/lsp_signature.nvim', event = 'InsertEnter'}}
  }

  use 'lourenci/github-colors'

  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function() require'config/nvim-autopairs' end,
    commit = 'b0bbe8d9089cbb045fd15d217ac5a5ec0f4f5066'
  }

  use {'deris/vim-shot-f', keys = {'f', 'F', 't', 'T'}}
end)
