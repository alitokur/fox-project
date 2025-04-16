local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

lualine.setup {
  options = {
    icons_enabled = true,
    -- theme = 'auto',
    --component_separators = { left = '', right = ''},
    --section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

local custom_gruvbox = require'lualine.themes.dracula'

custom_gruvbox.normal.c.bg = '#161616'
custom_gruvbox.insert.c.bg = '#161616'
custom_gruvbox.command.c.bg = '#161616'
custom_gruvbox.visual.c.bg = '#161616'

require('lualine').setup {
  options = { theme  = custom_gruvbox },
}
