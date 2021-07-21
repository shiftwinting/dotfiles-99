require("telescope").setup {
  pickers = {
    buffers = {
      previewer = false,
    },
    live_grep = {
      previewer = false,
    },
    oldfiles = {
      previewer = false,
    },
    find_files = {
      previewer = false,
      find_command = {'rg', '--files', '--hidden', '--smart-case', '--glob', '!.git' }
    }
  },
  defaults = {
    layout_config = {
      vertical = { width = 0.95 },
      horizontal = { width = 0.95 }
    },
  },
}

