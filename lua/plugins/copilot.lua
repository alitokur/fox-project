return {
  "github/copilot.vim",
  config = function()
    -- Disable tab mapping so we can use a custom mapping
    vim.g.copilot_no_tab_map = true

    -- Custom Copilot accept mapping
    vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })

    -- Color override for Copilot suggestions
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "solarized",
      callback = function()
        vim.api.nvim_set_hl(0, "CopilotSuggestion", {
          fg = "#111222",
          ctermfg = 8,
          force = true,
        })
      end,
    })
  end,
}

