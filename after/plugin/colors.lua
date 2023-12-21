local status_ok, colors = pcall(require, "catppuccin")
if not status_ok then
	return
end
-- require("everforest").load()
-- -- vim.cmd [[set background=dark]]
-- -- vim.cmd [[set termguicolors]]
-- -- vim.cmd[[let g:everforest_background = 'hard']]
-- -- vim.cmd[[let g:everforest_better_performance = 1]]
-- -- vim.cmd[[let g:everforest_ui_contrast = 'high']]
-- -- vim.cmd [[colorscheme everforest]]


require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
     color_overrides = {
        -- Carburetor
        mocha = {
          rosewater = "#ffd7d9",
          flamingo = "#ffb3b8",
          pink = "#ff7eb6",
          mauve = "#d4bbff",
          red = "#fa4d56",
          maroon = "#ff8389",
          peach = "#ff832b",
          yellow = "#fddc69",
          green = "#42be65",
          teal = "#3ddbd9",
          sky = "#82cfff",
          sapphire = "#78a9ff",
          blue = "#4589ff",
          lavender = "#be95ff",
          text = "#f4f4f4",
          subtext1 = "#e0e0e0",
          subtext0 = "#c6c6c6",
          overlay2 = "#a8a8a8",
          overlay1 = "#8d8d8d",
          overlay0 = "#6f6f6f",
          surface2 = "#525252",
          surface1 = "#393939",
          surface0 = "#262626",
          base = "#161616",
          mantle = "#0b0b0b",
          crust = "#000000"
        },
        -- Carburetor Cool
        macchiato = {
          rosewater = "#ffd7d9",
          flamingo = "#ffb3b8",
          pink = "#ff7eb6",
          red = "#fa4d56",
          maroon = "#ff8389",
          peach = "#ff832b",
          yellow = "#fddc69",
          green = "#42be65",
          teal = "#3ddbd9",
          sky = "#82cfff",
          sapphire = "#78a9ff",
          blue = "#4589ff",
          lavender = "#be95ff",
          mauve = "#d4bbff",
          text = "#f2f4f8",
          subtext1 = "#dde1E6",
          subtext0 = "#c1c7cd",
          overlay2 = "#a2a9b0",
          overlay1 = "#878d96",
          overlay0 = "#697077",
          surface2 = "#4d5358",
          surface1 = "#343a3f",
          surface0 = "#21272a",
          base = "#121619",
          mantle = "#090b0c",
          crust = "#000000"
        },
        -- Carburetor Warm
        frappe = {
          rosewater = "#ffd7d9",
          flamingo = "#ffb3b8",
          pink = "#ff7eb6",
          mauve = "#d4bbff",
          red = "#fa4d56",
          maroon = "#ff8389",
          peach = "#ff832b",
          yellow = "#fddc69",
          green = "#42be65",
          teal = "#3ddbd9",
          sky = "#82cfff",
          sapphire = "#78a9ff",
          blue = "#4589ff",
          lavender = "#be95ff",
          text = "#f7f3f2",
          subtext1 = "#e5e0df",
          subtext0 = "#cac5c4",
          overlay2 = "#ada8a8",
          overlay1 = "#8f8b8b",
          overlay0 = "#726e6e",
          surface2 = "#565151",
          surface1 = "#3c3838",
          surface0 = "#272525",
          base = "#171414",
          mantle = "#0b0a0a",
          crust = "#000000"
      }

},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin-mocha"
