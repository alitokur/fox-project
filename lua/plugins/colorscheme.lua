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

      -- -- darker background
      -- local bg = "#181818"
      --
      -- local hl = vim.api.nvim_set_hl
      --
      -- hl(0,"Normal",{bg=bg})
      -- hl(0,"NormalNC",{bg=bg})
      -- hl(0,"SignColumn",{bg=bg})
      -- hl(0,"EndOfBuffer",{bg=bg})
      -- hl(0,"NormalFloat",{bg=bg})
      -- hl(0,"FloatBorder",{bg=bg})
      --
      -- hl(0,"CursorLine",{bg="#2a2c3a"})
      -- hl(0,"ColorColumn",{bg="#2b2d3a"})
      -- hl(0,"LineNr",{fg="#6272a4"})
      -- hl(0,"CursorLineNr",{fg="#f8f8f2",bold=true})

      -- better C++ syntax visibility
      hl(0,"@type",{fg="#8be9fd"})
      hl(0,"@function",{fg="#50fa7b"})
      hl(0,"@constructor",{fg="#8be9fd"})
      hl(0,"@keyword",{fg="#ff79c6"})
      hl(0,"@parameter",{fg="#ffb86c"})
      hl(0,"@field",{fg="#bd93f9"})
      hl(0,"@comment",{fg="#6272a4",italic=true})

    end
  }
}
