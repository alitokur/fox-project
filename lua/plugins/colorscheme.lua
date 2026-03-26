return {
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    config = function()
      require("dracula").setup({
        italic_comment = true,
        transparent_bg = false,

        colors = {
          bg = "#161616",   -- 
          menu = "#161616", -- 
        },

        overrides = function(colors)
          return {
              CursorLine = { bg = "#262626" },
            -- Core UI
            Normal = { bg = colors.bg },
            NormalNC = { bg = colors.bg },
            SignColumn = { bg = colors.bg },
            EndOfBuffer = { bg = colors.bg },

            -- Floating windows / completion
            NormalFloat = { bg = colors.bg },
            FloatBorder = { bg = colors.bg },
            Pmenu = { bg = colors.bg },
            PmenuSel = { bg = "#202020" },

            -- LSP inlay hints
            LspInlayHint = {
              fg = "#7a7a7a",
              bg = colors.bg,
            },

            CmpItemAbbr = { bg = "NONE" },
            CmpItemAbbrMatch = { bg = "NONE" },
            CmpItemAbbrMatchFuzzy = { bg = "NONE" },
            CmpItemMenu = { bg = "NONE" },
            CmpItemKind = { bg = "NONE" },
          }
        end,
      })
      vim.cmd.colorscheme("dracula")
    end
  }
}
