local telescope = require('telescope')
local actions = require('telescope.actions')
local action_state = require("telescope.actions.state")

local custom_actions = {}

function custom_actions.fzf_multi_select(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local num_selections = table.getn(picker:get_multi_selection())

  if num_selections > 1 then
    -- actions.file_edit throws - context of picker seems to change
    --actions.file_edit(prompt_bufnr)
    actions.send_selected_to_qflist(prompt_bufnr)
    actions.open_qflist()
  else
    actions.file_edit(prompt_bufnr)
  end
end

telescope.setup {
  pickers = {
    buffers = {
      previewer = false,
    },
    live_grep = {
      previewer = false,
    },
    git_branches = {
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
    mappings = {
      i = {
        ["<cr>"] = custom_actions.fzf_multi_select,
        ["<esc>"] = actions.close
      },
      n = {
        ["<cr>"] = custom_actions.fzf_multi_select
      },
    },
  },
}
