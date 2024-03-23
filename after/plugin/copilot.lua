vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

 vim.api.nvim_create_autocmd('ColorScheme', {
          pattern = 'solarized',
          -- group = ...,
          callback = function()
            vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
              fg = '#111222',
              ctermfg = 8,
              force = true
            })
          end
        })




