-- -- Add this to your Lazy plugin list
-- return {
--   "rebelot/kanagawa.nvim",
--   priority = 1000, -- load before all other plugins
--   config = function()
--     require("kanagawa").setup({
--       compile = false,
--       undercurl = true,
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = false,
--       dimInactive = false,
--       terminalColors = true,
--       colors = {
--                   theme = {
--         all = {
--             ui = {
--                 bg_gutter = "none"
--             }
--         }
--     }
--       },
--       overrides = function(colors)
--         return {}
--       end,
--       theme = "wave",
--       background = {
--         dark = "wave",
--         light = "lotus"
--       },
--     })
--
--     -- Apply the colorscheme
--     vim.cmd("colorscheme kanagawa-dragon")
--   end,
-- }

-- return {
--   "vague-theme/vague.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other plugins
--   config = function()
--     -- NOTE: you do not need to call setup if you don't want to.
--     require("vague").setup({
--       -- optional configuration here
--     })
--     vim.cmd("colorscheme vague")
--   end
-- }
--

-- return {
--   'everviolet/nvim', name = 'evergarden',
--   priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
--   opts = {
--     theme = {
--       variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
--       accent = 'green',
--     },
--     editor = {
--       transparent_background = false,
--       sign = { color = 'none' },
--       float = {
--         color = 'mantle',
--         solid_border = false,
--       },
--       completion = {
--         color = 'surface0',
--       },
--     },
--   }
-- }
--
return {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup({
            transparent = { bg = true, float = true, }
        })

        require("nordic").load()
    end,
}
