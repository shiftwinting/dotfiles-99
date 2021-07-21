return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'tpope/vim-repeat', keys = {'.'}}

  use 'tpope/vim-surround'

  use 'tpope/vim-commentary'

  use 'tpope/vim-sleuth'

  use 'michaeljsmith/vim-indent-object'

  use 'tpope/vim-projectionist'

  use {'tpope/vim-dispatch', cmd = {'Dispatch', 'Make', 'Focus', 'Start'}, keys = {"'<cr>"}}

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
  }

  use {'mbbill/undotree', cmd = {'UndotreeToggle'}, config = function() require'config/undotree' end, keys = {'<leader>u'} }

  use {'lourenci/vim-visual-star-search', keys = {'*'}}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {{'JoosepAlviste/nvim-ts-context-commentstring'}},
    config = function() require'config/nvim-treesitter' end,
  }

  use {
    'hrsh7th/nvim-compe',
    config = function() require'config/nvim-compe' end,
  }

  use 'ray-x/lsp_signature.nvim'

  use {'neovim/nvim-lspconfig', config = function() require'config/nvim-lsp' end }

  use 'lourenci/github-colors'

  use 'tversteeg/registers.nvim'

  use 'windwp/nvim-autopairs'
end)
