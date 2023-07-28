local builtin = require('telescope.builtin')
--find files under your current wokring directory
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--search files under git files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
--search and get results live
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
--find the string under your cursor
vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})
--search it with command
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    grep_string = {
      theme = "dropdown",
    },
    lsp_definitions = {
        theme = "dropdown"
    },
    lsp_references = {
        theme = "dropdown"
    },
  },
  extensions = {
    -- ...
  }
}
