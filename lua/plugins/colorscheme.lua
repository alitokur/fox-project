return {
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    config = function()

      require("dracula").setup({
        italic_comment = true,
        transparent_bg = false,
      })

      vim.cmd.colorscheme("dracula")

      -- darker background
      local bg = "#181818"

      local hl = vim.api.nvim_set_hl

      hl(0,"Normal",{bg=bg})
      hl(0,"NormalNC",{bg=bg})
      hl(0,"SignColumn",{bg=bg})
      hl(0,"EndOfBuffer",{bg=bg})
      hl(0,"NormalFloat",{bg=bg})
      hl(0,"FloatBorder",{bg=bg})

      hl(0,"CursorLine",{bg="#2a2c3a"})
      hl(0,"ColorColumn",{bg="#2b2d3a"})
      hl(0,"LineNr",{fg="#6272a4"})
      hl(0,"CursorLineNr",{fg="#f8f8f2",bold=true})

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
