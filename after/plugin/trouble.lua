local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
    return
end

-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle("diagnostics") end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

require 'trouble'.setup()
