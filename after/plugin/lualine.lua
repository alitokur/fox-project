local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

-- https://github.com/Shock9616/nvim-config/blob/main/lua/shock/plugins/lualine.lua

require("lualine").setup({
    options = {
        component_separators = "",
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "alpha", "Outline" },
    },
    sections = {
        lualine_a = {
            { "mode", separator = { left = " ", right = "" }, icon = "" },
        },
        lualine_b = {
            {
                "filetype",
                icon_only = true,
                padding = { left = 1, right = 0 },
            },
            "filename",
        },
        lualine_c = {
            {
                "branch",
                icon = "",
            },
            {
                "diff",
                symbols = { added = " ", modified = " ", removed = " " },
                colored = false,
            },
        },
        lualine_x = {
            {
                "diagnostics",
                symbols = { error = " ", warn = " ", info = " ", hint = " " },
                update_in_insert = true,
            },
        },
        lualine_y = { clients_lsp },
        lualine_z = {
            { "location", separator = { left = "", right = " " }, icon = "" },
        },
    },
    inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
    },
    extensions = { "toggleterm", "trouble" },
})
local custom_gruvbox = require'lualine.themes.dracula'

custom_gruvbox.normal.c.bg = '#161616'
custom_gruvbox.insert.c.bg = '#161616'
custom_gruvbox.command.c.bg = '#161616'
custom_gruvbox.visual.c.bg = '#161616'

require('lualine').setup {
  options = { theme  = custom_gruvbox },
}
