return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },

  config = function()
    local gp = require("goto-preview")

    gp.setup({
      width = 120,
      height = 25,
      border = "rounded", -- daha belirgin border
      default_mappings = false,
      debug = false,
      opacity = nil,
      resizing_mappings = false,
      post_open_hook = nil,
      focus_on_open = true,
      dismiss_on_move = false,
      force_close = true,
      bufhidden = "wipe",
      stack_floating_preview_windows = true,
    })

    -- keymaps
    vim.keymap.set("n", "gpd", gp.goto_preview_definition, { desc = "Preview Definition" })
    vim.keymap.set("n", "gpi", gp.goto_preview_implementation, { desc = "Preview Implementation" })
    vim.keymap.set("n", "gpr", gp.goto_preview_references, { desc = "Preview References" })
    vim.keymap.set("n", "gpt", gp.goto_preview_type_definition, { desc = "Preview Type Definition" })

    -- preview kapatma
    vim.keymap.set("n", "gP", gp.close_all_win, { desc = "Close Preview Windows" })

    -- ESC ile preview kapatma
    vim.keymap.set("n", "<Esc>", function()
      gp.close_all_win()
    end, { silent = true })

    -- daha belirgin border rengi
    vim.api.nvim_set_hl(0, "FloatBorder", {
      fg = "#7aa2f7",
      bg = "NONE",
    })

    -- transparency kapat
    vim.o.winblend = 0
  end,
}
