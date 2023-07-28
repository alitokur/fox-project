local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<C-gg>"] = trouble.open_with_trouble },
      n = { ["<c-o>"] = trouble.open_with_trouble },
    },
  },
}

-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)

require 'trouble'.setup()
