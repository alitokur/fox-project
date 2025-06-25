-- Add this to your Lazy plugin list
return {
  "rebelot/kanagawa.nvim",
  priority = 1000, -- load before all other plugins
  config = function()
    require("kanagawa").setup({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
                  theme = {
        all = {
            ui = {
                bg_gutter = "none"
            }
        }
    }
      },
      overrides = function(colors)
        return {}
      end,
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus"
      },
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme kanagawa-dragon")
  end,
}

