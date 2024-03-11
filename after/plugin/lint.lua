require('lint').linters_by_ft = {
    cpp = {'cpplint', }
}

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })


vim.keymap.set("n", "<leader>lt", function()
  require("lint").try_lint()
end )


vim.keymap.set("n", "<leader>uq", function()
  vim.diagnostic.reset(nil, 0)
end, { desc = "Reset Diagnostic" })
