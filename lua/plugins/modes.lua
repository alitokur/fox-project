return {
  {
    "mvllow/modes.nvim",
    tag = "v0.2.1",
    config = function()
      require("modes").setup({
        colors = {
          bg = "#161616",
          copy = "#f5c359",
          delete = "#c75c6a",
          change = "#c75c6a",
          format = "#c79585",
          insert = "#161616",
          replace = "#245361",
          select = "#9745be",
          visual = "#9745be",
        },
        line_opacity = 0.15,
        set_cursor = false,
        set_cursorline = true,
        set_number = true,
        set_signcolumn = true,

        ignore = { "NvimTree", "TelescopePrompt", "!minifiles" },
      })
    end,
  },
}

