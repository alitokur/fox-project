return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000, -- load early so it can take over diagnostic rendering
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "ghost", -- "modern" | "classic" | "minimal" | "powerline" | "ghost" | "simple" | "nonerdfont" | "amongus"
      options = {
        -- show the diagnostic only on the line under the cursor (tidy)
        show_all_diags_on_cursorline = false,
        multilines = false,
        show_source = false,
        -- huge softwrap => the message is ALWAYS pushed to the line below,
        -- instead of sometimes sitting at the end of the code line
        softwrap = 9999,
        -- wrap long messages instead of letting them run off-screen
        overflow = { mode = "wrap" },
        break_line = { enabled = false },
        enable_on_insert = false,
      },
    })

    -- let the plugin own diagnostic display
    vim.diagnostic.config({ virtual_text = false, virtual_lines = false })
  end,
}
