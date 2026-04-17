return{
  "stevearc/aerial.nvim",
  opts = function()

    ---@type table<string, string[]>|false
    local filter_kind = false

    local opts = {
      attach_mode = "window",
      backends = { "lsp", "treesitter", "markdown", "man" },
      close_automatic_events = { "unsupported" },
      show_guides = true,
      layout = {
        default_direction = "left",
        resize_to_content = true,
        min_width = 35,
        max_width = 50,
        win_opts = {
          winhl = "Normal:NormalFloat,FloatBorder:NormalFloat,SignColumn:SignColumnSB",
          signcolumn = "yes",
          statuscolumn = " ",
        },
      },
      filter_kind = filter_kind,
      -- stylua: ignore
      guides = {
        mid_item   = "├╴",
        last_item  = "└╴",
        nested_top = "│ ",
        whitespace = "  ",
      },
    }
    return opts
  end,
  keys = {
    { "<leader>cs", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
  },
}


