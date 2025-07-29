return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup({
      defaults = {
        -- optional: change the fuzzy sorting behavior
        file_sorter = require('telescope.sorters').get_fuzzy_file,
        generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
      },
      pickers = {
        -- You can override picker behavior here
      },
      extensions = {
        fzf = {
          fuzzy = true,            -- true = fuzzy match; false = exact match
          override_generic_sorter = true,  -- override the default sorter
          override_file_sorter = true,     -- override the default file sorter
          case_mode = "smart_case",        -- or "ignore_case", "respect_case"
        }
      }
    })

    -- Load the extension
    telescope.load_extension('fzf')
    -- Keymaps
    vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
    vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
    vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
    vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
  end,
}

